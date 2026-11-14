package com.tawfiq.imaginstudio.imagetools.pixellab.undo;

import android.os.Bundle;
import android.widget.Toast;
import com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;

/* loaded from: classes.dex */
public class UndoOperation {

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.undo.UndoOperation$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType;

        static {
            int[] iArr = new int[HistoryType.values().length];
            $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType = iArr;
            try {
                iArr[HistoryType.text_action.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType[HistoryType.text_create.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType[HistoryType.text_delete.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType[HistoryType.shape_action.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType[HistoryType.shape_create.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType[HistoryType.shape_delete.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$undo$HistoryType[HistoryType.bg_action.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private UndoOperation() {
    }

    private static History.ComponentType getComponentType(HistoryType historyType) {
        return historyType == HistoryType.bg_action ? History.ComponentType.bg : (historyType == HistoryType.text_action || historyType == HistoryType.text_create || historyType == HistoryType.text_delete) ? History.ComponentType.text : (historyType == HistoryType.shape_action || historyType == HistoryType.shape_create || historyType == HistoryType.shape_delete) ? History.ComponentType.shape : History.ComponentType.unspecified;
    }

    public static void redo(MainActivity mainActivity) {
        mainActivity.history.endGrouping();
        if (!mainActivity.history.hasRedo()) {
            Toast.makeText(mainActivity.getApplicationContext(), "لا يوجد تقدم متبقٍ", 0).show();
            return;
        }
        if (mainActivity.isOptionExpandOpen()) {
            return;
        }
        do {
            try {
                Bundle redoLast = mainActivity.history.redoLast();
                if (redoLast != null) {
                    HistoryType historyType = (HistoryType) redoLast.getSerializable(History.HISTORY_TYPE);
                    if (historyType != null) {
                        String string = redoLast.getString(History.HISTORY_REFERENCE);
                        Bundle bundle = redoLast.getBundle("histRedoData");
                        if (bundle == null) {
                            bundle = redoLast.getBundle(History.HISTORY_DATA);
                        }
                        History.ComponentType componentType = getComponentType(historyType);
                        if (componentType == History.ComponentType.bg) {
                            if (bundle != null) {
                                mainActivity.recreatePreviewBg(bundle);
                                mainActivity.updateBackground(true);
                            }
                        } else if (componentType == History.ComponentType.text) {
                            TextComponent textByRef = mainActivity.textContain.getTextByRef(string);
                            if (historyType == HistoryType.text_create) {
                                if (bundle != null) {
                                    mainActivity.textContain.undoDeleteText(bundle, redoLast.getInt(History.HISTORY_LAYOUT_ID, 0), string);
                                }
                            } else if (historyType == HistoryType.text_delete) {
                                if (textByRef != null) {
                                    mainActivity.textContain.undoCreateText(string);
                                }
                            } else if (historyType == HistoryType.text_action && bundle != null && textByRef != null) {
                                textByRef.applyBundle(bundle, false);
                            }
                        } else if (componentType == History.ComponentType.shape) {
                            ShapeComponent shapeByRef = mainActivity.textContain.getShapeByRef(string);
                            if (historyType == HistoryType.shape_create) {
                                if (bundle != null) {
                                    mainActivity.textContain.undoDeleteShape(bundle, redoLast.getInt(History.HISTORY_LAYOUT_ID, 0), string);
                                }
                            } else if (historyType == HistoryType.shape_delete) {
                                if (shapeByRef != null) {
                                    mainActivity.textContain.undoCreateShape(string);
                                }
                            } else if (historyType == HistoryType.shape_action && shapeByRef != null && bundle != null) {
                                shapeByRef.applyBundle(bundle, false);
                            }
                        }
                    }
                    if (!redoLast.getBoolean(History.HISTORY_KEEP_GOING, false)) {
                        break;
                    }
                } else {
                    break;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (mainActivity.history.hasRedo());
        textContainer textcontainer = mainActivity.textContain;
        if (textcontainer != null) {
            textcontainer.redrawAll();
        }
        mainActivity.updateBackground();
        mainActivity.updateUndoButtonEnabled(Boolean.valueOf(mainActivity.history.hasHistory()));
        mainActivity.updateRedoButtonEnabled(Boolean.valueOf(mainActivity.history.hasRedo()));
        mainActivity.invalidateOptionsMenu();
    }

    public static void undo(MainActivity mainActivity) {
        mainActivity.history.endGrouping();
        if (!mainActivity.history.hasHistory()) {
            Toast.makeText(mainActivity.getApplicationContext(), "لا يوجد تراجع متبقٍ", 0).show();
            return;
        }
        if (mainActivity.isOptionExpandOpen()) {
            return;
        }
        do {
            try {
                Bundle last = mainActivity.history.getLast();
                mainActivity.history.undoneLast();
                if (last != null) {
                    HistoryType historyType = (HistoryType) last.getSerializable(History.HISTORY_TYPE);
                    if (historyType != null) {
                        String string = last.getString(History.HISTORY_REFERENCE);
                        Bundle bundle = last.getBundle(History.HISTORY_DATA);
                        History.ComponentType componentType = getComponentType(historyType);
                        if (componentType == History.ComponentType.bg) {
                            mainActivity.recreatePreviewBg(bundle);
                            mainActivity.updateBackground(true);
                        } else if (componentType == History.ComponentType.text) {
                            TextComponent textByRef = mainActivity.textContain.getTextByRef(string);
                            if (historyType == HistoryType.text_create) {
                                if (textByRef != null) {
                                    last.putBundle("histRedoData", textByRef.saveToBundle());
                                    mainActivity.textContain.undoCreateText(string);
                                }
                            } else if (historyType == HistoryType.text_delete) {
                                if (bundle != null) {
                                    mainActivity.textContain.undoDeleteText(bundle, last.getInt(History.HISTORY_LAYOUT_ID, 0), string);
                                }
                            } else if (historyType == HistoryType.text_action && bundle != null && textByRef != null) {
                                last.putBundle("histRedoData", textByRef.saveToBundle());
                                textByRef.applyBundle(bundle, false);
                            }
                        } else if (componentType == History.ComponentType.shape) {
                            ShapeComponent shapeByRef = mainActivity.textContain.getShapeByRef(string);
                            if (historyType == HistoryType.shape_create) {
                                if (shapeByRef != null) {
                                    last.putBundle("histRedoData", shapeByRef.saveToBundle());
                                    mainActivity.textContain.undoCreateShape(string);
                                }
                            } else if (historyType == HistoryType.shape_delete) {
                                if (bundle != null) {
                                    mainActivity.textContain.undoDeleteShape(bundle, last.getInt(History.HISTORY_LAYOUT_ID, 0), string);
                                }
                            } else if (historyType == HistoryType.shape_action && shapeByRef != null && bundle != null) {
                                last.putBundle("histRedoData", shapeByRef.saveToBundle());
                                shapeByRef.applyBundle(bundle, false);
                            }
                        }
                    }
                    if (!last.getBoolean(History.HISTORY_KEEP_GOING, false)) {
                        break;
                    }
                } else {
                    break;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } while (mainActivity.history.hasHistory());
        textContainer textcontainer = mainActivity.textContain;
        if (textcontainer != null) {
            textcontainer.redrawAll();
        }
        mainActivity.updateBackground();
        mainActivity.updateUndoButtonEnabled(Boolean.valueOf(mainActivity.history.hasHistory()));
        mainActivity.updateRedoButtonEnabled(Boolean.valueOf(mainActivity.history.hasRedo()));
        mainActivity.invalidateOptionsMenu();
    }
}
