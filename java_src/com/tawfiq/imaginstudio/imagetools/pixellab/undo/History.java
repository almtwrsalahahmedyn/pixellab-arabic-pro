package com.tawfiq.imaginstudio.imagetools.pixellab.undo;

import android.os.Bundle;
import com.tawfiq.imaginstudio.imagetools.pixellab.appStateConstants;
import com.tawfiq.imaginstudio.imagetools.pixellab.commonFuncs;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class History {
    public static final String HISTORY_DATA = "histData";
    public static final String HISTORY_GEOMETRY_ONLY = "histGeo";
    public static final String HISTORY_KEEP_GOING = "histKeepGoing";
    public static final String HISTORY_LAYOUT_ID = "histLayId";
    private static final int HISTORY_LIMIT = 150;
    public static final String HISTORY_REFERENCE = "histRef";
    public static final String HISTORY_TYPE = "histType";
    private OnHistoryListener listener;
    private List<Bundle> history = new ArrayList();
    private List<Bundle> redoList = new ArrayList();
    private boolean groupingOn = false;
    private String currentHash = null;
    private String lastSavedHash = null;

    /* loaded from: classes.dex */
    public enum ComponentType {
        text,
        shape,
        multiple,
        bg,
        unspecified
    }

    /* loaded from: classes.dex */
    public interface OnHistoryListener {
        void countChange(int i);
    }

    public History(OnHistoryListener onHistoryListener) {
        this.listener = onHistoryListener;
    }

    private void addStep(Bundle bundle) {
        this.redoList.clear();
        if (this.groupingOn) {
            bundle.putBoolean(HISTORY_KEEP_GOING, true);
        }
        this.history.add(bundle);
        if (this.history.size() > HISTORY_LIMIT) {
            this.history.remove(0);
        }
        countChanged();
    }

    private void countChanged() {
        OnHistoryListener onHistoryListener = this.listener;
        if (onHistoryListener != null) {
            onHistoryListener.countChange(this.history.size());
        }
        this.currentHash = this.history.size() + commonFuncs.getRandomString(3);
    }

    private static Bundle createAction(Bundle bundle, HistoryType historyType, String str) {
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(HISTORY_DATA, bundle);
        if (bundle.getBoolean(appStateConstants.OBJECT_GEOMETRY_ONLY)) {
            bundle2.putBoolean(HISTORY_GEOMETRY_ONLY, true);
        }
        bundle2.putSerializable(HISTORY_TYPE, historyType);
        bundle2.putString(HISTORY_REFERENCE, str);
        return bundle2;
    }

    public void addAction(Bundle bundle, HistoryType historyType, String str) {
        addStep(createAction(bundle, historyType, str));
    }

    public void addObjectCreation(String str, ComponentType componentType) {
        ComponentType componentType2 = ComponentType.text;
        if (componentType == componentType2 || componentType == ComponentType.shape) {
            Bundle bundle = new Bundle();
            bundle.putString(HISTORY_REFERENCE, str);
            bundle.putSerializable(HISTORY_TYPE, componentType == componentType2 ? HistoryType.text_create : HistoryType.shape_create);
            addStep(bundle);
        }
    }

    public void addObjectDeletion(Bundle bundle, int i, String str, ComponentType componentType) {
        ComponentType componentType2 = ComponentType.text;
        if (componentType == componentType2 || componentType == ComponentType.shape) {
            Bundle bundle2 = new Bundle();
            bundle2.putString(HISTORY_REFERENCE, str);
            bundle2.putBundle(HISTORY_DATA, bundle);
            bundle2.putSerializable(HISTORY_TYPE, componentType == componentType2 ? HistoryType.text_delete : HistoryType.shape_delete);
            bundle2.putInt(HISTORY_LAYOUT_ID, i);
            addStep(bundle2);
        }
    }

    public void autoSaveDone() {
        this.lastSavedHash = this.currentHash;
    }

    public int clearHistory() {
        int size = this.history.size();
        this.history.clear();
        countChanged();
        return size;
    }

    public void endGrouping() {
        this.groupingOn = false;
    }

    public void fromBundle(Bundle bundle) {
        if (bundle != null) {
            this.history.clear();
            try {
                for (String str : bundle.keySet()) {
                    this.history.add(Integer.valueOf(str).intValue(), bundle.getBundle(str));
                    countChanged();
                }
            } catch (Exception unused) {
                clearHistory();
            }
        }
    }

    public Bundle getBeforeLast() {
        if (this.history.size() <= 1) {
            return null;
        }
        return this.history.get(r0.size() - 2);
    }

    public int getCount() {
        return this.history.size();
    }

    public Bundle getLast() {
        if (this.history.size() <= 0) {
            return null;
        }
        return this.history.get(r0.size() - 1);
    }

    public boolean hasHistory() {
        return this.history.size() > 0;
    }

    public boolean hasRedo() {
        return this.redoList.size() > 0;
    }

    public Bundle redoLast() {
        if (this.redoList.size() <= 0) {
            return null;
        }
        Bundle remove = this.redoList.remove(r0.size() - 1);
        this.history.add(remove);
        countChanged();
        return remove;
    }

    public Bundle saveToBundle() {
        Bundle bundle = new Bundle();
        for (int i = 0; i < this.history.size(); i++) {
            try {
                bundle.putBundle(String.valueOf(i), this.history.get(i));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return bundle;
    }

    public boolean shouldAutoSave() {
        String str;
        String str2 = this.lastSavedHash;
        return str2 == null || (str = this.currentHash) == null || !str.equals(str2);
    }

    public void startGrouping() {
        this.groupingOn = true;
        Bundle bundle = new Bundle(1);
        bundle.putBoolean(HISTORY_KEEP_GOING, false);
        this.history.add(bundle);
    }

    public void undoAddLastStep() {
        HistoryType historyType;
        int size = this.history.size();
        do {
            size--;
            if (size < 0) {
                return;
            }
            historyType = (HistoryType) this.history.get(size).getSerializable(HISTORY_TYPE);
            if (historyType == HistoryType.text_action || historyType == HistoryType.shape_action) {
                break;
            }
        } while (historyType != HistoryType.bg_action);
        this.history.remove(size);
        countChanged();
    }

    public void undoneLast() {
        if (this.history.size() > 0) {
            List<Bundle> list = this.history;
            int size = list.size() - 1;
            this.redoList.add(list.get(size));
            this.history.remove(size);
            countChanged();
        }
    }
}
