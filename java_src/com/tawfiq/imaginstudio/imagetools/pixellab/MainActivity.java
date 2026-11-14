package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.animation.Animator;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.pdf.PdfDocument;
import android.graphics.pdf.PdfRenderer;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.text.Html;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.sbotGuard;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.TG.tg;
import com.arasthel.asyncjob.AsyncJob;
import com.gun0912.tedpermission.PermissionListener;
import com.gun0912.tedpermission.normal.TedPermission;
import com.signcheck.check;
import com.smalihelper.iran.CustomAlertDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker;
import com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.BackgroundImageHolder;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.CropInfo;
import com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.CurrImage;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.ImageSource;
import com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.displayInfo;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ArrowPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BezierPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ColorPickerTool;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.DrawingPanel;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.PerspectiveTool;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.ShapesCreator;
import com.tawfiq.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.ControlsHolder;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.optionExpand;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.CustomTextMenu;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_label;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.option_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.slider_ui;
import com.tawfiq.imaginstudio.imagetools.pixellab.effects.noise_bg;
import com.tawfiq.imaginstudio.imagetools.pixellab.effects.stripes_bg;
import com.tawfiq.imaginstudio.imagetools.pixellab.effects.vignette_fg;
import com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder;
import com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser;
import com.tawfiq.imaginstudio.imagetools.pixellab.textContainer;
import com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.History;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.HistoryType;
import com.tawfiq.imaginstudio.imagetools.pixellab.undo.UndoOperation;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MainActivity extends AppCompatActivity implements LayersHolder.OnButtonsListener, History.OnHistoryListener, textContainer.OnSelectionChangedListener, GridPanel.OnGridUpdated, colorPickerDialog.OnColorSelectedListener {
    public static final int BROWSE_QUOTES = 12;
    private static final String EXITED_BY_USER = "exitedByUser";
    public static final int GET_IMAGE_BG_GALLERY = 13;
    public static final int GET_IMAGE_SHAPE_TEXTURE_GALLERY = 45;
    public static final int GET_IMAGE_TEXT_TEXTURE_GALLERY = 19;
    public static final int GET_IMPORT_SHAPE_GALLERY = 20;
    public static final int GET_IMPORT_SHAPE_GALLERY_EDIT = 21;
    public static final String PERSISTED_STATE = "persistedState";
    static final int REQUEST_IMAGE_CAPTURE = 16;
    public static displayInfo helperClass;
    private static Context smContext;
    public ArrowPanel arrowPanel;
    private Handler autoSaveHandler;
    public BezierPanel bezierPanel;
    public BackgroundImageHolder bg_layout;
    public ColorPickerTool colorPickerTool;
    LinearLayout content;
    public DrawingPanel drawingPanel;
    private ControlsHolder fragmentTools;
    public GridPanel gridPanel;
    ImageButton layersHandle;
    public LayersHolder layersHolder;
    LinearLayout layersLayout;
    private Context mContext;
    File mCurrentPhotoFile;
    private boolean minimizedLayersForAction;
    public PerspectiveTool perspectiveTool;
    View previewContainer;
    RelativeLayout previewPanel;
    public noise_bg quoteEffect;
    Resources rsc;
    public ShapesCreator shapesCreatorTool;
    public stripes_bg stripesEffect;
    public textContainer textContain;
    TinyDB tinydb;
    public vignette_fg vignetteEffect;
    FrameLayout workingArea;
    public ZoomButton zoomButton;
    public ZoomWidget zoomWidget;
    public History history = new History(this);
    View toolsPanel = null;
    View topBar = null;
    View exitFScreen = null;
    public CurrImage usedImage = null;
    int displayWidth = 0;
    int displayHeight = 0;
    private List<WeakReference<Fragment>> mFragments = new ArrayList();
    Bundle instanceState = null;
    boolean loadedContent = false;
    private View.OnTouchListener layerHandleListener = new View.OnTouchListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.1
        float dX;
        float minX = -10.0f;
        float previousX;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float rawX = motionEvent.getRawX();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.previousX = rawX;
                this.dX = 0.0f;
                this.minX = (MainActivity.this.layersLayoutWidth - MainActivity.this.layersHandle.getWidth()) * (-1.0f);
                return true;
            }
            if (actionMasked != 2) {
                return true;
            }
            this.dX = rawX - this.previousX;
            this.previousX = rawX;
            MainActivity.this.layersLayout.setX(Math.max(this.minX, Math.min(0.0f, MainActivity.this.layersLayout.getX() + this.dX)));
            if (MainActivity.this.layersLayout.getAlpha() == 1.0f || !MainActivity.this.minimizedLayersForAction) {
                return true;
            }
            MainActivity.this.layersLayout.setAlpha(1.0f);
            return true;
        }
    };
    private float layersLayoutWidth = 10.0f;
    private boolean exitedByUser = true;
    private String currentProjectDir = null;
    private int currentAction = 1000;
    private long autoSaveInterval = 1000;
    Runnable autoSaveRunnable = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.17
        @Override // java.lang.Runnable
        public void run() {
            int i = 1;
            try {
                try {
                    if (MainActivity.this.history.hasHistory() && MainActivity.this.history.shouldAutoSave()) {
                        AsyncJob.doInBackground(new AsyncJob.OnBackgroundJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.17.1
                            @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
                            public void doOnBackground() {
                                try {
                                    MainActivity.this.autoSave();
                                    MainActivity.this.history.autoSaveDone();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                        i = 2;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } finally {
                Handler handler = MainActivity.this.autoSaveHandler;
                MainActivity mainActivity = MainActivity.this;
                handler.postDelayed(mainActivity.autoSaveRunnable, mainActivity.autoSaveInterval * 1);
            }
        }
    };
    boolean openedQuotes = false;
    PopupWindow quickTextMenu = null;
    PopupWindow quickShapeMenu = null;
    PopupWindow quickMultipleMenu = null;
    PopupWindow textStylesMenu = null;
    CustomTextMenu mainMenu = null;
    CustomTextMenu addNewMenu = null;
    CustomTextMenu saveMenu = null;
    boolean isFullscreen = false;
    boolean hiddenNonModal = false;

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity$28, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass28 implements textEditorDialog.onTextChangedListener {
        public AnonymousClass28() {
        }

        @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textEditorDialog.onTextChangedListener
        public void onTextDone(String str) {
            MainActivity.this.doneEditing();
            MainActivity mainActivity = MainActivity.this;
            mainActivity.saveCurrTextState(mainActivity.textContain.getCurrentText());
            MainActivity.this.textContain.editCurrentText(str);
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity$33, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass33 implements DialogInterface.OnClickListener {
        final /* synthetic */ TextComponent val$text;

        public AnonymousClass33(TextComponent textComponent) {
            this.val$text = textComponent;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            String l = Long.toString(System.currentTimeMillis() / 1000);
            StringBuilder sb = new StringBuilder();
            MainActivity.this.getApplicationContext();
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/pixelLab/textstyles/");
            sb.append(l);
            final File file = new File(sb.toString());
            final File file2 = new File(file, "data.plab");
            StringBuilder sb2 = new StringBuilder();
            MainActivity.this.getApplicationContext();
            sb2.append(Environment.getExternalStorageDirectory());
            sb2.append("/pixelLab/textstyles/");
            sb2.append(l);
            sb2.append("/res");
            new File(sb2.toString());
            file2.delete();
            final Bundle saveToBundle = this.val$text.saveToBundle();
            final ProgressDialog progressDialog = new ProgressDialog(MainActivity.this);
            progressDialog.setMessage(MainActivity.this.getString(R.string.pending_saving));
            progressDialog.show();
            AsyncJob.doInBackground(new AsyncJob.OnBackgroundJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.33.1
                @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
                public void doOnBackground() {
                    final boolean z;
                    try {
                        MainActivity.this.doOpOnBundleRes(saveToBundle, file.getAbsolutePath(), ResOp.persist);
                        file.mkdirs();
                        StringBuilder sb3 = new StringBuilder();
                        MainActivity.this.getApplicationContext();
                        sb3.append(Environment.getExternalStorageDirectory());
                        sb3.append("/pixelLab/textstyles");
                        commonFuncs.putNoMediaHere(new File(sb3.toString()));
                        JSONObject convertToJSON = BundleJSONConverter.convertToJSON(saveToBundle);
                        if (convertToJSON != null) {
                            String jSONObject = convertToJSON.toString();
                            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2));
                            bufferedWriter.write(jSONObject);
                            bufferedWriter.close();
                        }
                        z = true;
                    } catch (Exception unused) {
                        z = false;
                    }
                    AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.33.1.1
                        @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                        public void doInUIThread() {
                            try {
                                TextComponent.renderPreview(AnonymousClass33.this.val$text.saveToBundle(), MainActivity.this, commonFuncs.dpToPxInt(25)).compress(Bitmap.CompressFormat.PNG, 100, new FileOutputStream(new File(file, "thumb")));
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    });
                    if (!z) {
                        MainActivity.deleteDir(file);
                    }
                    AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.33.1.2
                        @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                        public void doInUIThread() {
                            MainActivity mainActivity;
                            int i2;
                            if (MainActivity.this.getApplicationContext() != null) {
                                if (z) {
                                    mainActivity = MainActivity.this;
                                    i2 = R.string.info_saving_done;
                                } else {
                                    mainActivity = MainActivity.this;
                                    i2 = R.string.error_saving;
                                }
                                mainActivity.msg(i2);
                                ProgressDialog progressDialog2 = progressDialog;
                                if (progressDialog2 == null || !progressDialog2.isShowing()) {
                                    return;
                                }
                                try {
                                    progressDialog.dismiss();
                                } catch (Exception unused2) {
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity$57, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass57 implements AsyncJob.OnBackgroundJob {
        final /* synthetic */ Bundle val$bundleSave;
        final /* synthetic */ String val$chosenName;
        final /* synthetic */ ProgressDialog val$pr;
        final /* synthetic */ File val$whereToSavePresetDir;

        public AnonymousClass57(Bundle bundle, String str, File file, ProgressDialog progressDialog) {
            this.val$bundleSave = bundle;
            this.val$chosenName = str;
            this.val$whereToSavePresetDir = file;
            this.val$pr = progressDialog;
        }

        @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
        public void doOnBackground() {
            final boolean z;
            try {
                MainActivity.this.saveJson(this.val$bundleSave, this.val$chosenName);
                z = true;
            } catch (Exception unused) {
                z = false;
            }
            AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.57.1
                @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                public void doInUIThread() {
                    MainActivity.this.textContain.invalidate();
                    StringBuilder sb = new StringBuilder();
                    MainActivity.this.getApplicationContext();
                    sb.append(Environment.getExternalStorageDirectory());
                    sb.append("/pixelLab/presets/");
                    sb.append(AnonymousClass57.this.val$chosenName);
                    try {
                        MainActivity.this.saveAPreview().compress(Bitmap.CompressFormat.JPEG, 100, new FileOutputStream(new File(new File(sb.toString()), "thumb")));
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    }
                }
            });
            if (!z) {
                MainActivity.deleteDir(this.val$whereToSavePresetDir);
            }
            AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.57.2
                @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                public void doInUIThread() {
                    Context applicationContext;
                    MainActivity mainActivity;
                    int i;
                    if (MainActivity.this.getApplicationContext() != null) {
                        if (z) {
                            applicationContext = MainActivity.this.getApplicationContext();
                            mainActivity = MainActivity.this;
                            i = R.string.info_saving_done;
                        } else {
                            applicationContext = MainActivity.this.getApplicationContext();
                            mainActivity = MainActivity.this;
                            i = R.string.error_saving;
                        }
                        Toast.makeText(applicationContext, mainActivity.getString(i), 0).show();
                        MainActivity.this.presetsChanged();
                        MainActivity.this.workingArea.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.57.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MainActivity.this.textContain.redrawAll();
                            }
                        });
                        ProgressDialog progressDialog = AnonymousClass57.this.val$pr;
                        if (progressDialog == null || !progressDialog.isShowing()) {
                            return;
                        }
                        try {
                            AnonymousClass57.this.val$pr.dismiss();
                        } catch (Exception unused2) {
                        }
                    }
                }
            });
        }
    }

    /* loaded from: classes.dex */
    public enum ResOp {
        persist,
        fixAbsolute
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aboutDialog() {
        View inflate = getLayoutInflater().inflate(R.layout.about_dialog, (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setView(inflate);
        builder.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
        TextView textView = (TextView) inflate.findViewById(R.id.CreditText);
        textView.setPadding(dpToPixels(5), dpToPixels(5), dpToPixels(5), 0);
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getAssets().open("misc/credit"), "UTF-8"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else {
                    sb.append(readLine);
                }
            }
            bufferedReader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String sb2 = sb.toString();
        if (!sb2.isEmpty()) {
            textView.setText(Html.fromHtml(sb2));
            textView.setVisibility(0);
        }
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyBlankPreset() {
        loadPresetFromAsset("presets/z.blank");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyDefaultPreset() {
        loadPresetFromAsset("presets/0 مساحة عمل");
        if (this.exitedByUser) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/autosave");
        final String sb2 = sb.toString();
        final String[] availableAutosaves = getAvailableAutosaves();
        if (availableAutosaves == null || availableAutosaves.length <= 0) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.confirm_operation));
        builder.setMessage(R.string.recover_autosave_prompt);
        builder.setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.20
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    MainActivity.this.loadPresetFromFile(sb2 + File.separator + availableAutosaves[0], false);
                } catch (Exception unused) {
                }
            }
        });
        builder.show();
    }

    private String arrayToStr(String[] strArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < strArr.length) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strArr[i]);
            sb2.append(i < strArr.length + (-1) ? "-" : "");
            sb.append(sb2.toString());
            i++;
        }
        return sb.toString();
    }

    private void askPositionGrid() {
        LinearLayout linearLayout = new LinearLayout(getApplicationContext());
        linearLayout.setBackgroundResource(R.drawable.rounded_gray_bg);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(8388611);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int dpToPixels = dpToPixels(5);
        layoutParams.topMargin = dpToPixels;
        layoutParams.bottomMargin = dpToPixels;
        int dpToPixels2 = dpToPixels(16);
        layoutParams.rightMargin = dpToPixels2;
        layoutParams.leftMargin = dpToPixels2;
        int currentMarkerPosition = (int) (this.gridPanel.getCurrentMarkerPosition() * 100.0f);
        final option_label option_labelVar = new option_label(getApplicationContext(), getString(R.string.controls_position), true, currentMarkerPosition, 2);
        final slider_ui slider_uiVar = new slider_ui(getApplicationContext(), 0, 100, currentMarkerPosition);
        option_labelVar.setPadding(0, dpToPixels(10), 0, 0);
        linearLayout.addView(option_labelVar, layoutParams);
        linearLayout.addView(slider_uiVar, layoutParams);
        slider_uiVar.setNotifyValueChange(new DiscreteSeekBar.OnProgressChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.46
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onProgressChanged(DiscreteSeekBar discreteSeekBar, int i, boolean z) {
                option_labelVar.setValue(i);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStartTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.SeekBar.DiscreteSeekBar.OnProgressChangeListener
            public void onStopTrackingTouch(DiscreteSeekBar discreteSeekBar) {
            }
        });
        new AlertDialog.Builder(this).setView(linearLayout).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.47
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.gridPanel.setCurrentMarkerPosition(slider_uiVar.getBarValue() / 100.0f);
            }
        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
    }

    private void askResetGrid() {
        final LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getApplicationContext()).inflate(R.layout.grid_reset, (ViewGroup) null);
        new AlertDialog.Builder(this).setView(linearLayout).setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.45
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.gridPanel.startNewFromDialog(((EditText) linearLayout.findViewById(R.id.guide_new_h)).getText().toString(), ((EditText) linearLayout.findViewById(R.id.guide_new_v)).getText().toString());
            }
        }).setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoSave() {
        String l = Long.toString(System.currentTimeMillis() / 1000);
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/autosave");
        File file = new File(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        getApplicationContext();
        sb2.append(Environment.getExternalStorageDirectory());
        sb2.append("/pixelLab/autosave/");
        sb2.append(l);
        File file2 = new File(sb2.toString());
        String[] list = file.list(new FilenameFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.16
            @Override // java.io.FilenameFilter
            public boolean accept(File file3, String str) {
                return file3.isDirectory() && !str.equals(".nomedia");
            }
        });
        boolean z = false;
        int length = list != null ? list.length - 1000 : 0;
        if (length > 0) {
            Arrays.sort(list);
            for (int i = 0; i < length; i++) {
                deleteDir(new File(file, list[i]));
            }
        }
        StringBuilder sb3 = new StringBuilder();
        getApplicationContext();
        sb3.append(Environment.getExternalStorageDirectory());
        sb3.append("/pixelLab/autosave/");
        sb3.append(l);
        sb3.append("/data.plab");
        File file3 = new File(sb3.toString());
        try {
            Bundle bundle = new Bundle();
            putStateInBundle(bundle);
            putUiStateInBundle(bundle);
            file2.mkdirs();
            StringBuilder sb4 = new StringBuilder();
            getApplicationContext();
            sb4.append(Environment.getExternalStorageDirectory());
            sb4.append("/pixelLab/autosave");
            commonFuncs.putNoMediaHere(new File(sb4.toString()));
            JSONObject convertToJSON = BundleJSONConverter.convertToJSON(bundle);
            if (convertToJSON != null) {
                String jSONObject = convertToJSON.toString();
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file3));
                bufferedWriter.write(jSONObject);
                bufferedWriter.close();
            }
            z = true;
        } catch (Exception unused) {
        }
        if (z) {
            commonFuncs.putEmptyFileHere(file2, "valid");
        } else {
            deleteDir(file2);
        }
    }

    private String capitalize(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        char charAt = str.charAt(0);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        return Character.toUpperCase(charAt) + str.substring(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHistory() {
        this.history.clearHistory();
    }

    private File createImageFile() throws IOException {
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "CAMERA_" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + ".jpg");
        this.mCurrentPhotoFile = file;
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteCurrObject() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.operation_confirmation));
        builder.setMessage(getString(R.string.confirmation_delete));
        builder.setPositiveButton(getApplicationContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.22
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.removeObject();
            }
        });
        builder.setNegativeButton(getApplicationContext().getString(android.R.string.no), (DialogInterface.OnClickListener) null);
        builder.show();
    }

    public static boolean deleteDir(File file) {
        if (file != null && file.exists() && file.isDirectory()) {
            for (String str : file.list()) {
                if (!deleteDir(new File(file, str))) {
                    return false;
                }
            }
        }
        if (file != null) {
            return file.delete();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissExportDialog(export_image_dialog export_image_dialogVar) {
        if (export_image_dialogVar == null || !export_image_dialogVar.isShowing()) {
            return;
        }
        try {
            export_image_dialogVar.dismiss();
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissProgressDialog(ProgressDialog progressDialog) {
        if (progressDialog != null) {
            try {
                progressDialog.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doneLoadingContent() {
        this.instanceState = null;
        this.loadedContent = true;
        this.tinydb.putBoolean(EXITED_BY_USER, false);
    }

    private boolean doneSomething() {
        return this.history.hasHistory();
    }

    private void expandOptionFor(int i, History.ComponentType componentType, ArrayList<String> arrayList) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        backStackRecord.mEnterAnim = R.anim.enter;
        backStackRecord.mExitAnim = R.anim.exit;
        backStackRecord.mPopEnterAnim = R.anim.popenter;
        backStackRecord.mPopExitAnim = R.anim.popexit;
        if (((optionExpand) supportFragmentManager.findFragmentByTag("option_expand")) != null) {
            doneEditing();
        }
        ControlsHolder controlsHolder = (ControlsHolder) supportFragmentManager.findFragmentByTag("fragment_tools");
        if (controlsHolder != null) {
            backStackRecord.hide(controlsHolder);
        }
        optionExpand newInstance = optionExpand.newInstance(i, componentType, arrayList);
        this.mFragments.add(new WeakReference<>(newInstance));
        backStackRecord.doAddOp(R.id.toolsPanel, newInstance, "option_expand");
        if (!backStackRecord.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        backStackRecord.mAddToBackStack = true;
        backStackRecord.mName = null;
        try {
            backStackRecord.commitInternal(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        minimizeLayers();
    }

    private String getDate(long j) {
        return DateFormat.getDateTimeInstance(2, 2, Locale.getDefault()).format(new Date(j));
    }

    private Bundle getState(Bundle bundle) {
        String string;
        if (bundle == null || (string = bundle.getString(PERSISTED_STATE)) == null) {
            return bundle;
        }
        Bundle bundle2 = null;
        try {
            Parcel obtain = Parcel.obtain();
            FileInputStream openFileInput = openFileInput(string);
            int available = openFileInput.available();
            byte[] bArr = new byte[available];
            openFileInput.read(bArr);
            openFileInput.close();
            obtain.unmarshall(bArr, 0, available);
            obtain.setDataPosition(0);
            bundle2 = obtain.readBundle();
            obtain.recycle();
            return bundle2;
        } catch (Exception e) {
            e.printStackTrace();
            return bundle2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleImageReceiveFromOtherApp(Intent intent, String str) {
        try {
            final String saveUriToFile = saveUriToFile(("android.intent.action.EDIT".equals(str) || "android.intent.action.VIEW".equals(str)) ? intent.getData() : "android.intent.action.SEND".equals(str) ? (Uri) intent.getParcelableExtra("android.intent.extra.STREAM") : null);
            ImageSource imageSource = new ImageSource();
            imageSource.setLocalFilePath(saveUriToFile);
            ImageCropperDialog imageCropperDialog = new ImageCropperDialog(this, imageSource, null, 0, false, false, false, false, true);
            CurrImage currImage = this.usedImage;
            if (currImage.forcedDims) {
                imageCropperDialog.setAspectAndLock(currImage.getWidth(), this.usedImage.getHeight());
            }
            imageCropperDialog.setCropListener(new ImageCropperDialog.OnCropEventListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.19
                @Override // com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.OnCropEventListener
                public void cropDone(RectF rectF, int i, boolean z, boolean z2, boolean z3, int[] iArr) {
                    MainActivity.this.usedImage.setFlipH(z2);
                    MainActivity.this.usedImage.setFlipV(z3);
                    MainActivity.this.usedImage.setCircular(z);
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.usedImage.setAsBitmap(mainActivity.getApplicationContext(), saveUriToFile, rectF, i);
                    if (iArr != null) {
                        MainActivity mainActivity2 = MainActivity.this;
                        mainActivity2.usedImage.setForcedDims(iArr[0], iArr[1], true, mainActivity2.getApplicationContext());
                    }
                    MainActivity.this.updateBackground(true);
                }
            });
            imageCropperDialog.show();
        } catch (Throwable unused) {
            Toast.makeText(getApplicationContext(), getString(R.string.error_load_image), 0).show();
        }
    }

    private void print(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }

    public static String processImportUri(Context context, Uri uri) {
        String renderPdfUri;
        if (uri == null) {
            return null;
        }
        String type = context.getContentResolver().getType(uri);
        return ((uri.toString().toLowerCase().contains("pdf") || (type != null && type.contains("pdf"))) && (renderPdfUri = renderPdfUri(context, uri)) != null && new File(renderPdfUri).exists()) ? renderPdfUri : ((MainActivity) context).saveUriToFile(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void promptSaveProject() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        View inflate = getLayoutInflater().inflate(R.layout.preset_name_prompt, (ViewGroup) null);
        final AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) inflate.findViewById(R.id.nameField);
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/presets/");
        String[] list = new File(sb.toString()).list(new FilenameFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.31
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return !str.equals(".nomedia");
            }
        });
        if (list != null && list.length > 0) {
            autoCompleteTextView.setAdapter(new ArrayAdapter(this, android.R.layout.simple_list_item_1, list));
        }
        builder.setView(inflate);
        builder.setPositiveButton(getString(android.R.string.ok), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.32
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String obj = autoCompleteTextView.getText().toString();
                if (!obj.isEmpty() && !obj.equals("autosave")) {
                    MainActivity.this.saveCurrentAsPreset(obj);
                } else {
                    MainActivity mainActivity = MainActivity.this;
                    Toast.makeText(mainActivity, mainActivity.getString(R.string.invalid_name), 0).show();
                }
            }
        });
        builder.setNegativeButton(getString(android.R.string.cancel), (DialogInterface.OnClickListener) null);
        builder.show();
    }

    private void putUiStateInBundle(Bundle bundle) {
        bundle.putInt(appStateConstants.BG_TYPE, this.usedImage.getType());
        bundle.putInt(appStateConstants.BG_WIDTH, this.usedImage.getWidth());
        bundle.putInt(appStateConstants.BG_HEIGHT, this.usedImage.getHeight());
        bundle.putInt(appStateConstants.BG_COLOR, this.usedImage.getCurrColor());
        bundle.putInt(appStateConstants.BG_ACTUAL_WIDTH, this.usedImage.getActualWidth());
        bundle.putInt(appStateConstants.BG_ACTUAL_HEIGHT, this.usedImage.getActualHeight());
        bundle.putBoolean(appStateConstants.BG_PHOTO_FORCED_DIM, this.usedImage.forcedDims);
        bundle.putBundle(appStateConstants.BG_PHOTO_CROP, CropInfo.makeBundle(this.usedImage.getBitmapPortion(), this.usedImage.getRotation(), this.usedImage.isCircular(), this.usedImage.isFlipH(), this.usedImage.isFlipV()));
        bundle.putBundle(appStateConstants.BG_PHOTO_SRC, this.usedImage.getImageSource().toBundle());
        bundle.putBoolean(appStateConstants.BG_PHOTO_V2, true);
        bundle.putString(appStateConstants.BG_GRADIENT_V2, this.usedImage.getCurrGradient().convertToStringV2());
        bundle.putInt(appStateConstants.BG_ROTATION, this.usedImage.getRotation());
        bundle.putBoolean(appStateConstants.EFFECT_VIGNETTE_ENABLED, this.vignetteEffect.getVisibility() == 0);
        bundle.putInt(appStateConstants.EFFECT_VIGNETTE_COLOR, this.vignetteEffect.getVignetteColor());
        bundle.putInt(appStateConstants.EFFECT_VIGNETTE_ALPHA, this.vignetteEffect.getVignetteColorAlpha());
        bundle.putBoolean(appStateConstants.EFFECT_NOISE_ENABLED, this.quoteEffect.getVisibility() == 0);
        bundle.putInt(appStateConstants.EFFECT_NOISE_VAL2, this.quoteEffect.getNumberToRepeat());
        bundle.putInt(appStateConstants.EFFECT_NOISE_ALPHA, this.quoteEffect.getEffectAlpha());
        bundle.putBoolean(appStateConstants.EFFECT_STRIPES_ENABLED, this.stripesEffect.getVisibility() == 0);
        bundle.putInt(appStateConstants.EFFECT_STRIPES_ALPHA, this.stripesEffect.getEffectAlpha());
        bundle.putInt(appStateConstants.EFFECT_STRIPES_VAL2, this.stripesEffect.getNumberToRepeat());
        bundle.putInt(appStateConstants.EFFECT_BRIGHTNESS_VAL, this.bg_layout.getBrightness());
        bundle.putInt(appStateConstants.EFFECT_CONTRAST_VAL, this.bg_layout.getContrast());
        bundle.putInt(appStateConstants.EFFECT_HUE_VAL, this.bg_layout.getHue());
        bundle.putInt(appStateConstants.EFFECT_SATURATION_VAL, this.bg_layout.getSaturation());
        ControlsHolder controlsHolder = (ControlsHolder) getSupportFragmentManager().findFragmentByTag("fragment_tools");
        bundle.putInt("currTab", controlsHolder != null ? controlsHolder.getTab() : 0);
        BackgroundImageHolder backgroundImageHolder = this.bg_layout;
        if (backgroundImageHolder != null) {
            bundle.putInt("effectBlurVal", backgroundImageHolder.getBlurRadius());
        }
    }

    private void recycleFragments() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        Iterator<WeakReference<Fragment>> it = this.mFragments.iterator();
        while (it.hasNext()) {
            Fragment fragment = it.next().get();
            if (fragment != null) {
                backStackRecord.remove(fragment);
            }
        }
        try {
            backStackRecord.commitInternal(true);
        } catch (Exception unused) {
        }
        this.mFragments.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeObject() {
        this.textContain.removeCurrentObject();
    }

    public static String renderPdfUri(Context context, Uri uri) {
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            if (openFileDescriptor == null) {
                return null;
            }
            PdfRenderer pdfRenderer = new PdfRenderer(openFileDescriptor);
            PdfRenderer.Page openPage = pdfRenderer.openPage(0);
            Bitmap createBitmap = Bitmap.createBitmap(openPage.getWidth() * 2, openPage.getHeight() * 2, Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawColor(-1);
            openPage.render(createBitmap, null, null, 1);
            openPage.close();
            pdfRenderer.close();
            openFileDescriptor.close();
            File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("pdf_converted"), context);
            FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
            createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            return cacheFile.getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCurrentAsPresetOverwrite(String str) {
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/presets/");
        sb.append(str);
        File file = new File(sb.toString());
        new File(file, "data.plab").delete();
        Bundle bundle = new Bundle();
        putStateInBundle(bundle);
        putUiStateInBundle(bundle);
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage(getString(R.string.pending_saving));
        progressDialog.show();
        AsyncJob.doInBackground(new AnonymousClass57(bundle, str, file, progressDialog));
    }

    private void saveState(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return;
        }
        deleteAppFiles();
        String randomString = commonFuncs.getRandomString(6);
        Parcel obtain = Parcel.obtain();
        obtain.writeBundle(bundle);
        try {
            FileOutputStream openFileOutput = openFileOutput(randomString, 0);
            openFileOutput.write(obtain.marshall());
            openFileOutput.flush();
            openFileOutput.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        obtain.recycle();
        bundle2.putString(PERSISTED_STATE, randomString);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setProgressMessage(ProgressDialog progressDialog, String str) {
        if (progressDialog != null) {
            try {
                progressDialog.setMessage(str);
            } catch (Exception unused) {
            }
        }
    }

    private void showCropForCurrentShape() {
        textContainer textcontainer = this.textContain;
        final int i = textcontainer.curr_id_shape;
        if (i != -1) {
            ShapeComponent shapeComponent = textcontainer.shapes.get(Integer.valueOf(i));
            ImageCropperDialog imageCropperDialog = new ImageCropperDialog(this, shapeComponent.getImageSource(), shapeComponent.getBitmapPortion(true), shapeComponent.getBitmapInRotation(), shapeComponent.isBitmapCircularCrop(), true, shapeComponent.isFlipHor(), shapeComponent.isFlipVer(), false);
            imageCropperDialog.setCropListener(new ImageCropperDialog.OnCropEventListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.41
                @Override // com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.OnCropEventListener
                public void cropDone(RectF rectF, int i2, boolean z, boolean z2, boolean z3, int[] iArr) {
                    ShapeComponent shapeComponent2 = MainActivity.this.textContain.shapes.get(Integer.valueOf(i));
                    if (shapeComponent2 == null || shapeComponent2.compareCrop(rectF, i2, z, z2, z3)) {
                        return;
                    }
                    MainActivity.this.saveCurrShapeState(shapeComponent2);
                    shapeComponent2.setCrop(rectF, i2, z, z2, z3);
                }
            });
            imageCropperDialog.show();
        }
    }

    private void startAutoSave() {
        stopAutoSave();
        this.autoSaveHandler.postDelayed(this.autoSaveRunnable, this.autoSaveInterval);
    }

    private void stopAutoSave() {
        this.autoSaveHandler.removeCallbacks(this.autoSaveRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void takeCameraImage() {
        File file;
        int i;
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        if (intent.resolveActivity(getPackageManager()) != null) {
            try {
                file = createImageFile();
            } catch (IOException unused) {
                file = null;
            }
            if (file != null) {
                Uri uriForFile = FileProvider.getUriForFile(this, "com.tawfiq.imaginstudio.imagetools.pixellab.fileprovider", file);
                intent.addFlags(524288);
                intent.putExtra("output", uriForFile);
                intent.addFlags(1);
                if (Build.VERSION.SDK_INT <= 21) {
                    intent.setClipData(ClipData.newRawUri("", uriForFile));
                    intent.addFlags(3);
                }
                startActivityForResult(intent, 16);
                return;
            }
            i = R.string.error_get_image;
        } else {
            i = R.string.error_get_camera;
        }
        msg(getString(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleFullscreen() {
        View view;
        if (this.isFullscreen) {
            this.exitFScreen.animate().alpha(0.0f).setListener(null);
            this.exitFScreen.setVisibility(8);
            this.zoomWidget.resetZoom(false);
            this.topBar.setVisibility(0);
            this.topBar.animate().y(0.0f).alpha(1.0f).setListener(null);
            this.toolsPanel.setVisibility(0);
            view = this.toolsPanel;
        } else {
            this.topBar.animate().y(this.topBar.getHeight() * (-1)).alpha(0.0f).setDuration(150L).setListener(null);
            this.exitFScreen.setAlpha(0.0f);
            this.exitFScreen.setVisibility(0);
            this.toolsPanel.animate().alpha(0.0f).setListener(null);
            this.topBar.setVisibility(8);
            this.toolsPanel.setVisibility(8);
            this.zoomWidget.setZoomLevel(Math.min(this.content.getWidth() / this.workingArea.getWidth(), this.content.getHeight() / this.workingArea.getHeight()));
            view = this.exitFScreen;
        }
        view.animate().alpha(1.0f).setListener(null);
        this.isFullscreen = !this.isFullscreen;
    }

    private void toggleQuickActions(boolean z) {
        boolean z2;
        View findViewById = findViewById(R.id.quick_tools_text);
        View findViewById2 = findViewById(R.id.quick_tools_actions);
        View findViewById3 = findViewById(R.id.quick_edit_action);
        View findViewById4 = findViewById(R.id.quick_delete_action);
        if (z && findViewById != null && findViewById2 != null && findViewById3 != null && findViewById4 != null) {
            findViewById.animate().alpha(0.0f).scaleY(0.5f).setDuration(250L).start();
            findViewById2.animate().alpha(1.0f).scaleY(1.0f).setDuration(150L).start();
            z2 = true;
        } else {
            if (findViewById == null || findViewById2 == null || findViewById3 == null || findViewById4 == null) {
                return;
            }
            findViewById2.animate().alpha(0.0f).scaleY(0.5f).setDuration(250L).start();
            findViewById.animate().alpha(1.0f).scaleY(1.0f).setDuration(150L).start();
            z2 = false;
        }
        findViewById3.setEnabled(z2);
        findViewById4.setEnabled(z2);
    }

    public static void trimCache() {
        try {
            Environment.getExternalStorageDirectory().getAbsolutePath();
            StringBuilder sb = new StringBuilder();
            Context context = smContext;
            sb.append(Environment.getExternalStorageDirectory());
            sb.append("/pixelLab/presets");
            final String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            Context context2 = smContext;
            sb3.append(Environment.getExternalStorageDirectory());
            sb3.append("/pixelLab/textstyles");
            final String sb4 = sb3.toString();
            StringBuilder sb5 = new StringBuilder();
            Context context3 = smContext;
            sb5.append(Environment.getExternalStorageDirectory());
            sb5.append("/pixelLab/.cache");
            File file = new File(sb5.toString());
            File file2 = new File(sb2);
            File file3 = new File(sb4);
            StringBuilder sb6 = new StringBuilder();
            Context context4 = smContext;
            sb6.append(Environment.getExternalStorageDirectory());
            sb6.append("/pixelLab/autosave");
            new File(sb6.toString());
            String[] list = file2.list(new FilenameFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.43
                @Override // java.io.FilenameFilter
                public boolean accept(File file4, String str) {
                    return new File(sb2 + File.separator + str, "deleted").exists();
                }
            });
            if (list != null) {
                for (String str : list) {
                    deleteDir(new File(sb2 + File.separator + str));
                }
            }
            String[] list2 = file3.list(new FilenameFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.44
                @Override // java.io.FilenameFilter
                public boolean accept(File file4, String str2) {
                    return new File(sb4 + File.separator + str2, "deleted").exists();
                }
            });
            if (list2 != null) {
                for (String str2 : list2) {
                    deleteDir(new File(sb4 + File.separator + str2));
                }
            }
            deleteDir(file);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    public void actionButtonClicked(View view) {
        CustomTextMenu customTextMenu;
        switch (view.getId()) {
            case R.id.action_add /* 2131361840 */:
                customTextMenu = this.addNewMenu;
                customTextMenu.showAsDropDown(view);
                return;
            case R.id.action_grid /* 2131361854 */:
                this.gridPanel.toggle();
                return;
            case R.id.action_layers /* 2131361856 */:
                toggleLayers();
                return;
            case R.id.action_menu /* 2131361857 */:
                customTextMenu = this.mainMenu;
                customTextMenu.showAsDropDown(view);
                return;
            case R.id.action_quotes /* 2131361878 */:
                startActivityForResult(new Intent(this, (Class<?>) quotes_browser.class), 12);
                quoteOpened();
                return;
            case R.id.action_save /* 2131361880 */:
                this.saveMenu.hideFirstItem(!doneSomething() || this.currentProjectDir == null);
                customTextMenu = this.saveMenu;
                customTextMenu.showAsDropDown(view);
                return;
            case R.id.action_share /* 2131361883 */:
                showExportDialog();
                return;
            case R.id.action_undo /* 2131361885 */:
                UndoOperation.undo(this);
                return;
            case R.id.action_redo /* 2131362558 */:
                UndoOperation.redo(this);
                return;
            case R.id.action_change_theme /* 2131367947 */:
                new colorPickerDialog(this, getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918), this).show();
                return;
            default:
                return;
        }
    }

    public void activityResultLogic(int i, int i2, final Intent intent) {
        ImageCropperDialog imageCropperDialog;
        ImageCropperDialog.OnCropEventListener onCropEventListener;
        if (i2 == 12) {
            final Runnable runnable = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.35
                @Override // java.lang.Runnable
                public void run() {
                    textContainer textcontainer = MainActivity.this.textContain;
                    int i3 = textcontainer.curr_id;
                    if (i3 != -1) {
                        final TextComponent textComponent = textcontainer.texts.get(Integer.valueOf(i3));
                        MainActivity.this.saveCurrTextState(textComponent);
                        textComponent.setText(intent.getExtras().getString(quotes_browser.QUOTE_EXPORTED), false);
                        textComponent.setMax((int) (MainActivity.helperClass.getContainerWidth() * 0.75f));
                        textComponent.setTextAlign(17);
                        textComponent.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.35.1
                            @Override // java.lang.Runnable
                            public void run() {
                                textComponent.setX((MainActivity.helperClass.getContainerWidth() / 2.0f) - (textComponent.textWidth / 2.0f));
                                textComponent.setY((MainActivity.helperClass.getContainerHeight() / 2.0f) - (textComponent.textHeight / 2.0f));
                            }
                        });
                    }
                }
            };
            if (this.textContain.curr_id != -1) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(getString(R.string.add_quote_title));
                builder.setMessage(getString(R.string.question_use_text));
                builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.36
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        runnable.run();
                    }
                });
                builder.setNegativeButton(getString(R.string.create_new), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.37
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i3) {
                        MainActivity.this.doActionFor(1);
                        runnable.run();
                    }
                });
                builder.show();
            } else {
                doActionFor(1);
                runnable.run();
            }
        }
        if (i == 13) {
            final String saveUriToFile = saveUriToFile(intent.getData());
            Objects.toString(intent.getData());
            ImageSource imageSource = new ImageSource();
            imageSource.setLocalFilePath(saveUriToFile);
            imageCropperDialog = new ImageCropperDialog(this, imageSource, null, 0, false, false, false, false, true);
            CurrImage currImage = this.usedImage;
            if (currImage.forcedDims) {
                imageCropperDialog.setAspectAndLock(currImage.getWidth(), this.usedImage.getHeight());
            }
            onCropEventListener = new ImageCropperDialog.OnCropEventListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.39
                @Override // com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.OnCropEventListener
                public void cropDone(RectF rectF, int i3, boolean z, boolean z2, boolean z3, int[] iArr) {
                    MainActivity.this.usedImage.setCircular(z);
                    MainActivity.this.usedImage.setFlipH(z2);
                    MainActivity.this.usedImage.setFlipV(z3);
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.usedImage.setAsBitmap(mainActivity.getApplicationContext(), saveUriToFile, rectF, i3);
                    if (iArr != null) {
                        MainActivity mainActivity2 = MainActivity.this;
                        mainActivity2.usedImage.setForcedDims(iArr[0], iArr[1], true, mainActivity2.getApplicationContext());
                    }
                    MainActivity.this.updateBackground(true);
                }
            };
        } else {
            if (i != 16) {
                if (i != 45) {
                    try {
                        switch (i) {
                            case 19:
                                break;
                            case 20:
                                ClipData clipData = intent.getClipData();
                                if (clipData != null) {
                                    int itemCount = clipData.getItemCount();
                                    for (int i3 = 0; i3 < itemCount; i3++) {
                                        String saveUriToFile2 = saveUriToFile(clipData.getItemAt(i3).getUri());
                                        if (saveUriToFile2 != null) {
                                            ImageSource imageSource2 = new ImageSource();
                                            imageSource2.setLocalFilePath(saveUriToFile2);
                                            try {
                                                int[] dimensionsFromPath = commonFuncs.getDimensionsFromPath(saveUriToFile2);
                                                float max = (int) (Math.max(helperClass.getContainerWidth(), helperClass.getContainerHeight()) * 0.75f);
                                                float min = Math.min(max / dimensionsFromPath[0], max / dimensionsFromPath[1]);
                                                float f = i3;
                                                this.textContain.addNewShape(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource2, true, f * 20.0f, f * 20.0f, (int) (dimensionsFromPath[0] * min), (int) (dimensionsFromPath[1] * min));
                                            } catch (Exception unused) {
                                            }
                                        }
                                    }
                                    return;
                                }
                                String saveUriToFile3 = saveUriToFile(intent.getData());
                                ImageSource imageSource3 = new ImageSource();
                                imageSource3.setLocalFilePath(saveUriToFile3);
                                int[] dimensionsFromPath2 = commonFuncs.getDimensionsFromPath(saveUriToFile3);
                                float max2 = (int) (Math.max(helperClass.getContainerWidth(), helperClass.getContainerHeight()) * 0.75f);
                                float min2 = Math.min(max2 / dimensionsFromPath2[0], max2 / dimensionsFromPath2[1]);
                                this.textContain.addNewShape(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource3, true, 0.0f, 0.0f, (int) (dimensionsFromPath2[0] * min2), (int) (dimensionsFromPath2[1] * min2));
                                break;
                            case 21:
                                String saveUriToFile4 = saveUriToFile(intent.getData());
                                ImageSource imageSource4 = new ImageSource();
                                imageSource4.setLocalFilePath(saveUriToFile(intent.getData()));
                                int[] dimensionsFromPath3 = commonFuncs.getDimensionsFromPath(saveUriToFile4);
                                float max3 = (int) (Math.max(helperClass.getContainerWidth(), helperClass.getContainerHeight()) * 0.75f);
                                float min3 = Math.min(max3 / dimensionsFromPath3[0], max3 / dimensionsFromPath3[1]);
                                saveCurrShapeState(this.textContain.getCurrentShape());
                                this.textContain.editCurrShape(ShapeComponent.SHAPE_TYPE_GALLERY, imageSource4, true, (int) (dimensionsFromPath3[0] * min3), (int) (dimensionsFromPath3[1] * min3));
                                break;
                            default:
                                super.onActivityResult(i, i2, intent);
                                return;
                        }
                        showCropForCurrentShape();
                        return;
                    } catch (Exception unused2) {
                        return;
                    }
                }
                final boolean z = i == 19;
                final String saveUriToFile5 = saveUriToFile(intent.getData());
                ImageCropperDialog imageCropperDialog2 = new ImageCropperDialog(this, new ImageSource(saveUriToFile5), new RectF(0.0f, 0.0f, 100.0f, 100.0f), 0, false, true, false, false, false);
                imageCropperDialog2.setCircularSupported(false);
                imageCropperDialog2.setCropListener(new ImageCropperDialog.OnCropEventListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.38
                    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.OnCropEventListener
                    public void cropDone(RectF rectF, int i4, boolean z2, boolean z3, boolean z4, int[] iArr) {
                        MainActivity mainActivity;
                        int i5;
                        if (z) {
                            MainActivity mainActivity2 = MainActivity.this;
                            textContainer textcontainer = mainActivity2.textContain;
                            if (textcontainer.curr_id == -1) {
                                return;
                            }
                            mainActivity2.saveCurrTextState(textcontainer.getCurrentText());
                            textContainer textcontainer2 = MainActivity.this.textContain;
                            textcontainer2.texts.get(Integer.valueOf(textcontainer2.curr_id)).setNewTextureSrc(new ImageSource(saveUriToFile5), i4, rectF, z3, z4);
                            mainActivity = MainActivity.this;
                            i5 = 49;
                        } else {
                            MainActivity mainActivity3 = MainActivity.this;
                            textContainer textcontainer3 = mainActivity3.textContain;
                            if (textcontainer3.curr_id_shape == -1) {
                                return;
                            }
                            mainActivity3.saveCurrShapeState(textcontainer3.getCurrentShape());
                            textContainer textcontainer4 = MainActivity.this.textContain;
                            textcontainer4.shapes.get(Integer.valueOf(textcontainer4.curr_id_shape)).setNewTextureSrc(new ImageSource(saveUriToFile5), i4, rectF, z3, z4);
                            mainActivity = MainActivity.this;
                            i5 = 85;
                        }
                        mainActivity.doActionFor(i5);
                    }
                });
                imageCropperDialog2.show();
                return;
            }
            final String path = this.mCurrentPhotoFile.getPath();
            ImageSource imageSource5 = new ImageSource();
            imageSource5.setLocalFilePath(path);
            imageCropperDialog = new ImageCropperDialog(this, imageSource5, null, 0, false, false, false, false, true);
            CurrImage currImage2 = this.usedImage;
            if (currImage2.forcedDims) {
                imageCropperDialog.setAspectAndLock(currImage2.getWidth(), this.usedImage.getHeight());
            }
            onCropEventListener = new ImageCropperDialog.OnCropEventListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.40
                @Override // com.tawfiq.imaginstudio.imagetools.pixellab.Image.ImageCropperDialog.OnCropEventListener
                public void cropDone(RectF rectF, int i4, boolean z2, boolean z3, boolean z4, int[] iArr) {
                    MainActivity.this.usedImage.setCircular(z2);
                    MainActivity.this.usedImage.setFlipH(z3);
                    MainActivity.this.usedImage.setFlipV(z4);
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.usedImage.setAsBitmap(mainActivity.getApplicationContext(), path, rectF, i4);
                    if (iArr != null) {
                        MainActivity mainActivity2 = MainActivity.this;
                        mainActivity2.usedImage.setForcedDims(iArr[0], iArr[1], true, mainActivity2.getApplicationContext());
                    }
                    MainActivity.this.updateBackground(true);
                }
            };
        }
        imageCropperDialog.setCropListener(onCropEventListener);
        imageCropperDialog.show();
    }

    public void addClickListenersTo(ViewGroup viewGroup, final History.ComponentType componentType) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof option_ui) {
                final option_ui option_uiVar = (option_ui) childAt;
                option_uiVar.setActionEvent(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.80
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        PopupWindow popupWindow = MainActivity.this.quickTextMenu;
                        if (popupWindow != null && popupWindow.isShowing()) {
                            MainActivity.this.quickTextMenu.dismiss();
                        }
                        PopupWindow popupWindow2 = MainActivity.this.quickShapeMenu;
                        if (popupWindow2 != null && popupWindow2.isShowing()) {
                            MainActivity.this.quickShapeMenu.dismiss();
                        }
                        PopupWindow popupWindow3 = MainActivity.this.quickMultipleMenu;
                        if (popupWindow3 != null && popupWindow3.isShowing()) {
                            MainActivity.this.quickMultipleMenu.dismiss();
                        }
                        PopupWindow popupWindow4 = MainActivity.this.textStylesMenu;
                        if (popupWindow4 != null && popupWindow4.isShowing()) {
                            MainActivity.this.textStylesMenu.dismiss();
                        }
                        MainActivity.this.doActionFor(option_uiVar.actionDo, componentType, componentType == History.ComponentType.multiple ? MainActivity.this.layersHolder.getSelectedReferences() : null);
                    }
                });
            }
        }
    }

    public void applyStyle(String str, boolean z) {
        Bundle doOpOnBundleRes;
        TextComponent currentText = this.textContain.getCurrentText();
        if (currentText != null) {
            if (z) {
                doOpOnBundleRes = assetJsonToBundle(str + "/data.plab");
            } else {
                doOpOnBundleRes = doOpOnBundleRes(fileJsonToBundle(str + "/data.plab"), str, ResOp.fixAbsolute);
            }
            if (doOpOnBundleRes != null) {
                saveCurrTextState(currentText);
                currentText.applyBundle(doOpOnBundleRes, false, true);
            }
        }
    }

    public Bundle assetJsonToBundle(String str) {
        JSONObject jSONObject;
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getAssets().open(str)));
                StringBuffer stringBuffer = new StringBuffer();
                char[] cArr = new char[1024];
                while (true) {
                    int read = bufferedReader.read(cArr);
                    if (read <= 0) {
                        try {
                            break;
                        } catch (JSONException e) {
                            e.printStackTrace();
                            jSONObject = null;
                            return BundleJSONConverter.convertToBundle(jSONObject);
                        }
                    }
                    stringBuffer.append(cArr, 0, read);
                }
                jSONObject = new JSONObject(stringBuffer.toString());
            } catch (Exception e2) {
                e2.printStackTrace();
                jSONObject = null;
                return BundleJSONConverter.convertToBundle(jSONObject);
            }
            return BundleJSONConverter.convertToBundle(jSONObject);
        } catch (Exception unused) {
            return null;
        }
    }

    public void checkPermissionsAndDo(final Runnable runnable) {
        PermissionListener permissionListener = new PermissionListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.4
            @Override // com.gun0912.tedpermission.PermissionListener
            public void onPermissionDenied(List<String> list) {
                Toast.makeText(MainActivity.this, R.string.permission_denied, 0).show();
            }

            @Override // com.gun0912.tedpermission.PermissionListener
            public void onPermissionGranted() {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        };
        try {
            new TedPermission();
            TedPermission.create().setPermissionListener(permissionListener).setDeniedMessage(R.string.denied_message).setPermissions("android.permission.WRITE_EXTERNAL_STORAGE").check();
        } catch (Error | Exception unused) {
        }
    }

    public void cleanMemory() {
        Runtime.getRuntime().gc();
        System.gc();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder.OnButtonsListener
    public void clickedQuickEditLayers(View view, History.ComponentType componentType, Rect rect) {
        PopupWindow popupWindow;
        PopupWindow popupWindow2;
        if (componentType == History.ComponentType.text && (popupWindow2 = this.quickTextMenu) != null) {
            int[] menuOffsetForLocation = getMenuOffsetForLocation(popupWindow2, rect);
            this.quickTextMenu.showAtLocation(view, 0, menuOffsetForLocation[0], menuOffsetForLocation[1]);
        }
        if (componentType != History.ComponentType.shape || (popupWindow = this.quickShapeMenu) == null) {
            return;
        }
        int[] menuOffsetForLocation2 = getMenuOffsetForLocation(popupWindow, rect);
        this.quickShapeMenu.showAtLocation(view, 0, menuOffsetForLocation2[0], menuOffsetForLocation2[1]);
    }

    public File copyDirectory(File file, File file2) throws IOException {
        if (!file.isDirectory()) {
            File parentFile = file2.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("Cannot create dir " + parentFile.getAbsolutePath());
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            }
            fileInputStream.close();
            fileOutputStream.close();
        } else {
            if (!file2.exists() && !file2.mkdirs()) {
                throw new IOException("Cannot create dir " + file2.getAbsolutePath());
            }
            String[] list = file.list();
            for (int i = 0; i < list.length; i++) {
                copyDirectory(new File(file, list[i]), new File(file2, list[i]));
            }
        }
        return file2;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.undo.History.OnHistoryListener
    public void countChange(int i) {
        updateUndoButtonEnabled(Boolean.valueOf(i > 0));
        History history = this.history;
        if (history != null) {
            updateRedoButtonEnabled(Boolean.valueOf(history.hasRedo()));
        }
    }

    public void createAddNewMenu() {
        CustomTextMenu customTextMenu = new CustomTextMenu(this);
        this.addNewMenu = customTextMenu;
        customTextMenu.addItem(R.string.action_addText, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.63
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(1);
            }
        });
        this.addNewMenu.addItem(R.string.action_addText_date, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.64
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(1);
                Date date = new Date();
                textContainer textcontainer = MainActivity.this.textContain;
                textcontainer.texts.get(Integer.valueOf(textcontainer.curr_id)).setText(android.text.format.DateFormat.getDateFormat(MainActivity.this.getApplicationContext()).format(date), true);
            }
        });
        this.addNewMenu.addItem(R.string.action_addSticker, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.65
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(21);
            }
        });
        this.addNewMenu.addItem(R.string.sticker_shapes, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.66
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(-60);
            }
        });
        this.addNewMenu.addItem(R.string.action_addGallery, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.67
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(29);
            }
        });
        this.addNewMenu.addItem(R.string.action_addDraw, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.68
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(-30);
            }
        });
        CustomTextMenu customTextMenu2 = this.addNewMenu;
        customTextMenu2.done();
        int i = getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        View contentView = customTextMenu2.getContentView();
        if (contentView != null) {
            contentView.setBackgroundColor(i);
        }
    }

    public void createMainMenu() {
        CustomTextMenu customTextMenu = new CustomTextMenu(this);
        this.mainMenu = customTextMenu;
        customTextMenu.addItem(R.string.action_setBg_gallery, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.69
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(31);
            }
        });
        this.mainMenu.addItem(R.string.fullscreen_set, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.70
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.toggleFullscreen();
            }
        });
        this.mainMenu.addItem(R.string.action_setBg_camera, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.71
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(32);
            }
        });
        this.mainMenu.addItem(R.string.action_export_image, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.72
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.showExportDialog();
            }
        });
        this.mainMenu.addItem(R.string.image_size, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.73
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(65);
            }
        });
        this.mainMenu.addItem(R.string.action_tutorials, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.75
            @Override // java.lang.Runnable
            public void run() {
                try {
                    MainActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(MainActivity.this.getString(R.string.youtube_tutorials))));
                } catch (Exception unused) {
                }
            }
        });
        this.mainMenu.addItem(R.string.open_autosave, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.76
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.openAutoSaveDialog();
            }
        });
        this.mainMenu.addItem(R.string.open_plp, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.77
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.showProjectBrowser(true);
            }
        });
        this.mainMenu.addItem(R.string.action_about, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.78
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.aboutDialog();
            }
        });
        this.mainMenu.addItem(R.string.action_exit, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.79
            @Override // java.lang.Runnable
            public void run() {
                new AlertDialog.Builder(MainActivity.this).setMessage(R.string.exit_confirm).setTitle(R.string.confirm_operation).setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null).setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.79.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        MainActivity.this.tinydb.putBoolean(MainActivity.EXITED_BY_USER, true);
                        MainActivity.this.finish();
                    }
                }).show();
            }
        });
        CustomTextMenu customTextMenu2 = this.mainMenu;
        customTextMenu2.done();
        int i = getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        View contentView = customTextMenu2.getContentView();
        if (contentView != null) {
            contentView.setBackgroundColor(i);
        }
    }

    public void createSaveMenu() {
        CustomTextMenu customTextMenu = new CustomTextMenu(this);
        this.saveMenu = customTextMenu;
        customTextMenu.addItem(R.string.save_changes, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.60
            @Override // java.lang.Runnable
            public void run() {
                if (MainActivity.this.currentProjectDir == null || MainActivity.this.currentProjectDir.isEmpty()) {
                    return;
                }
                MainActivity mainActivity = MainActivity.this;
                mainActivity.saveCurrentAsPresetOverwrite(mainActivity.currentProjectDir.substring(MainActivity.this.currentProjectDir.lastIndexOf("/") + 1));
            }
        });
        this.saveMenu.addItem(R.string.action_save_project, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.61
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doActionFor(76);
            }
        });
        this.saveMenu.addItem(R.string.save_image, new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.62
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.showExportDialog();
            }
        });
        CustomTextMenu customTextMenu2 = this.saveMenu;
        customTextMenu2.done();
        ProjectExportStudio.addExportOptionToSaveMenu(this, customTextMenu2);
        CustomTextMenu customTextMenu3 = this.saveMenu;
        customTextMenu3.hideFirstItem(true);
        int i = getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        View contentView = customTextMenu3.getContentView();
        if (contentView != null) {
            contentView.setBackgroundColor(i);
        }
    }

    public void deleteAppFiles() {
        for (String str : fileList()) {
            deleteFile(str);
        }
    }

    public void doActionFor(int i) {
        doActionFor(i, History.ComponentType.unspecified);
    }

    public void doActionFor(int i, History.ComponentType componentType) {
        if (i == 70) {
            expandOptionFor(i, componentType, null);
        } else {
            doActionFor(i, componentType, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:265:0x0206, code lost:
    
        if (r25 != (-60)) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:196:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doActionFor(int r25, com.tawfiq.imaginstudio.imagetools.pixellab.undo.History.ComponentType r26, java.util.ArrayList<java.lang.String> r27) {
        /*
            Method dump skipped, instructions count: 1227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.doActionFor(int, com.tawfiq.imaginstudio.imagetools.pixellab.undo.History$ComponentType, java.util.ArrayList):void");
    }

    public Bundle doOpOnBundleRes(Bundle bundle, String str, ResOp resOp) {
        if (bundle == null) {
            return null;
        }
        if (str.contains("/pixelLab/autosave/")) {
            return bundle;
        }
        for (String str2 : bundle.keySet()) {
            if (bundle.get(str2) instanceof Bundle) {
                doOpOnBundleRes(bundle.getBundle(str2), str, resOp);
            } else if (str2.equals(appStateConstants.IMG_SRC_PATH) || str2.equals(appStateConstants.TEXTS_SPANS_INTERVALS_FONT)) {
                String string = bundle.getString(str2);
                if (string != null && !string.isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    String str3 = File.separator;
                    sb.append(str3);
                    sb.append("res");
                    sb.append(str3);
                    String sb2 = sb.toString();
                    if ((str2.equals(appStateConstants.IMG_SRC_PATH) && ((resOp == ResOp.persist && ImageSource.SourceType.local_file.name().equals(bundle.getString(appStateConstants.IMG_SRC_SOURCE_TYPE))) || (resOp == ResOp.fixAbsolute && string.contains(sb2)))) || (str2.equals(appStateConstants.TEXTS_SPANS_INTERVALS_FONT) && ((resOp == ResOp.fixAbsolute && string.contains(sb2)) || (resOp == ResOp.persist && !string.startsWith("fonts"))))) {
                        File file = new File(string);
                        try {
                            bundle.putString(str2, resOp == ResOp.persist ? copyDirectory(file, new File(str + sb2, commonFuncs.generateName(""))).getAbsolutePath() : str + sb2 + file.getName());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return bundle;
    }

    public void doPickGalleryImage(int i) {
        String str;
        Intent intent = new Intent();
        if (i == 20) {
            intent.setType("*/*");
            intent.putExtra("android.intent.extra.MIME_TYPES", new String[]{"image/*", "application/pdf"});
            intent.putExtra("android.intent.extra.ALLOW_MULTIPLE", true);
            str = "Select Pictures or PDF";
        } else {
            intent.setType("image/*");
            str = "Select Picture";
        }
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setAction("android.intent.action.GET_CONTENT");
        startActivityForResult(Intent.createChooser(intent, str), i);
    }

    public void doneEditing() {
        if (this.textContain.getSelectedComponent() != null) {
            this.textContain.getSelectedComponent().clearListeners();
        }
        this.bezierPanel.setVisibility(8);
        this.bezierPanel.clearMe();
        this.arrowPanel.setVisibility(8);
        this.arrowPanel.clearMe();
        this.drawingPanel.setVisibility(8);
        this.drawingPanel.clearMe();
        this.shapesCreatorTool.setVisibility(8);
        this.shapesCreatorTool.clearMe();
        this.perspectiveTool.disable();
        this.colorPickerTool.disable();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        try {
            supportFragmentManager.popBackStackImmediate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        ControlsHolder controlsHolder = (ControlsHolder) supportFragmentManager.findFragmentByTag("fragment_tools");
        if (controlsHolder != null) {
            backStackRecord.show(controlsHolder);
        }
        optionExpand optionexpand = (optionExpand) supportFragmentManager.findFragmentByTag("option_expand");
        if (optionexpand != null) {
            backStackRecord.remove(optionexpand);
        }
        try {
            backStackRecord.commitInternal(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        recycleFragments();
        if (this.minimizedLayersForAction) {
            maximizeLayers();
        }
        if (this.hiddenNonModal) {
            toggleNonModalControls(true);
        }
    }

    public void donePressed() {
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
    }

    public void enableLayers(boolean z) {
        findViewById(R.id.action_layers).setSelected(z);
        findViewById(R.id.layers_layout_delete).setVisibility(8);
        findViewById(R.id.layers_layout_edit).setVisibility(8);
        findViewById(R.id.layers_layout_merge).setVisibility(8);
        findViewById(R.id.layers_layout_season).setVisibility(8);
        ((ImageButton) findViewById(R.id.layers_layout_selection)).setImageResource(R.drawable.layers_select_start);
        if (!z) {
            hideLayers();
            return;
        }
        this.layersLayout.setX(this.layersLayoutWidth * (-1.0f));
        this.layersLayout.setAlpha(0.0f);
        this.layersLayout.setVisibility(0);
        this.layersHolder.enable();
        maximizeLayers();
    }

    public void exportImage(final int i, final int i2, final Bitmap.CompressFormat compressFormat, final export_image_dialog export_image_dialogVar, final boolean z, final String str) {
        Bitmap bitmap;
        int containerWidth = helperClass.getContainerWidth();
        int containerHeight = helperClass.getContainerHeight();
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        float f = containerWidth;
        float f2 = containerHeight;
        float max = Math.max(1.0f, Math.max(i / f, i2 / f2));
        this.workingArea.setVisibility(4);
        setRenderMode(true, max);
        try {
            bitmap = Bitmap.createBitmap((int) (f * max), (int) (f2 * max), config);
        } catch (Throwable unused) {
            bitmap = null;
        }
        if (bitmap == null) {
            new AlertDialog.Builder(this).setMessage(getString(R.string.error_render_size)).setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null).show();
            setRenderMode(false, 1.0f);
            this.workingArea.setVisibility(0);
            updateBackground();
            this.textContain.redrawAll();
            return;
        }
        final Canvas canvas = new Canvas(bitmap);
        canvas.scale(max, max);
        final ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage(getString(R.string.image_render));
        progressDialog.setCancelable(false);
        progressDialog.show();
        final Bitmap bitmap2 = bitmap;
        AsyncJob.doInBackground(new AsyncJob.OnBackgroundJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.52
            /* JADX INFO: Access modifiers changed from: private */
            public void doAfterDone() {
                MainActivity.this.dismissProgressDialog(progressDialog);
                MainActivity.this.setRenderMode(false, 1.0f);
                MainActivity.this.workingArea.setVisibility(0);
                MainActivity.this.updateBackground();
                MainActivity.this.textContain.redrawAll();
            }

            /* JADX WARN: Removed duplicated region for block: B:11:0x003c  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
            /* JADX WARN: Removed duplicated region for block: B:31:0x001e  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private java.io.File getWhereToSave() {
                /*
                    r5 = this;
                    r0 = 0
                    com.tawfiq.imaginstudio.imagetools.pixellab.export_image_dialog r1 = r5     // Catch: java.lang.Throwable -> La
                    if (r1 == 0) goto La
                    java.lang.String r0 = r1.getUserCustomName()     // Catch: java.lang.Throwable -> La
                    goto Lb
                La:
                    r0 = 0
                Lb:
                    java.lang.StringBuilder r1 = new java.lang.StringBuilder
                    r1.<init>()
                    if (r0 == 0) goto L1e
                    java.lang.String r2 = "[\\\\/:*?\"<>|]"
                    java.lang.String r3 = "_"
                    java.lang.String r0 = r0.replaceAll(r2, r3)
                    r1.append(r0)
                    goto L31
                L1e:
                    java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
                    java.lang.String r2 = "yyyyMMdd_HHmmss"
                    r0.<init>(r2)
                    java.util.Date r2 = new java.util.Date
                    r2.<init>()
                    java.lang.String r0 = r0.format(r2)
                    r1.append(r0)
                L31:
                    com.tawfiq.imaginstudio.imagetools.pixellab.export_image_dialog r0 = r5
                    android.widget.Spinner r0 = r0.format
                    int r0 = r0.getSelectedItemPosition()
                    r2 = 6
                    if (r0 != r2) goto L3f
                    java.lang.String r0 = ".tiff"
                    goto L5f
                L3f:
                    r2 = 5
                    if (r0 != r2) goto L45
                    java.lang.String r0 = ".bmp"
                    goto L5f
                L45:
                    r2 = 4
                    if (r0 != r2) goto L4b
                    java.lang.String r0 = ".svg"
                    goto L5f
                L4b:
                    r2 = 3
                    if (r0 != r2) goto L51
                    java.lang.String r0 = ".webp"
                    goto L5f
                L51:
                    r2 = 2
                    if (r0 != r2) goto L57
                    java.lang.String r0 = ".pdf"
                    goto L5f
                L57:
                    r2 = 1
                    if (r0 != r2) goto L5d
                    java.lang.String r0 = ".png"
                    goto L5f
                L5d:
                    java.lang.String r0 = ".jpg"
                L5f:
                    r1.append(r0)
                    java.lang.String r0 = r1.toString()
                    java.io.File r1 = new java.io.File
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    r2.<init>()
                    java.io.File r3 = android.os.Environment.getExternalStorageDirectory()
                    r2.append(r3)
                    java.lang.String r3 = java.io.File.separator
                    r2.append(r3)
                    java.lang.String r3 = "pixelLab/الصور"
                    r2.append(r3)
                    java.lang.String r2 = r2.toString()
                    r1.<init>(r2)
                    r1.mkdirs()
                    java.io.File r2 = new java.io.File
                    r2.<init>(r1, r0)
                    return r2
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.AnonymousClass52.getWhereToSave():java.io.File");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void putInGalleryAndShare(File file) {
                String lowerCase = file.getName().toLowerCase();
                String str2 = lowerCase.endsWith(".tiff") ? "image/tiff" : lowerCase.endsWith(".pdf") ? "application/pdf" : lowerCase.endsWith(".svg") ? "image/svg+xml" : lowerCase.endsWith(".webp") ? "image/webp" : lowerCase.endsWith(".png") ? "image/png" : lowerCase.endsWith(".bmp") ? "image/bmp" : "image/jpeg";
                MediaScannerConnection.scanFile(MainActivity.this, new String[]{file.getPath()}, new String[]{str2}, null);
                Uri uriForFile = FileProvider.getUriForFile(MainActivity.this, "com.tawfiq.imaginstudio.imagetools.pixellab.fileprovider", file);
                Objects.toString(uriForFile);
                boolean z2 = z;
                if (z2 && str == null) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.addFlags(524288);
                    intent.setType(str2);
                    intent.putExtra("android.intent.extra.STREAM", uriForFile);
                    if (Build.VERSION.SDK_INT <= 21) {
                        intent.setClipData(ClipData.newRawUri("", uriForFile));
                        intent.addFlags(3);
                    }
                    intent.addFlags(1);
                    MainActivity mainActivity = MainActivity.this;
                    mainActivity.startActivity(Intent.createChooser(intent, mainActivity.getString(R.string.image_share)));
                    return;
                }
                if (z2) {
                    Intent intent2 = new Intent("android.intent.action.SEND");
                    intent2.setType(str2);
                    intent2.putExtra("android.intent.extra.TEXT", "made using PixelLab");
                    intent2.putExtra("android.intent.extra.STREAM", uriForFile);
                    intent2.setPackage(str);
                    intent2.addFlags(1);
                    if (Build.VERSION.SDK_INT <= 21) {
                        intent2.setClipData(ClipData.newRawUri("", uriForFile));
                        intent2.addFlags(3);
                    }
                    try {
                        MainActivity.this.startActivity(intent2);
                    } catch (ActivityNotFoundException unused2) {
                        MainActivity mainActivity2 = MainActivity.this;
                        mainActivity2.msg(mainActivity2.getString(R.string.error_load_app));
                    }
                }
            }

            private void saveBitmapToStorage(Bitmap bitmap3, File file) throws Throwable {
                int selectedItemPosition = export_image_dialogVar.format.getSelectedItemPosition();
                int i3 = i;
                int i4 = i2;
                if (bitmap3.getWidth() != i3 || bitmap3.getHeight() != i4) {
                    try {
                        bitmap3 = Bitmap.createScaledBitmap(bitmap3, i3, i4, true);
                    } catch (Throwable unused2) {
                        System.gc();
                    }
                }
                if (selectedItemPosition == 6) {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
                    bitmap3.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream);
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                    return;
                }
                if (selectedItemPosition == 5) {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file));
                    bitmap3.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream2);
                    bufferedOutputStream2.flush();
                    bufferedOutputStream2.close();
                    return;
                }
                if (selectedItemPosition == 4) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap3.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    String str2 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" width=\"" + i + "\" height=\"" + i2 + "\" viewBox=\"0 0 " + i + " " + i2 + "\">\n<image width=\"" + i + "\" height=\"" + i2 + "\" xlink:href=\"data:image/png;base64," + Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2) + "\"/>\n</svg>";
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    fileOutputStream.write(str2.getBytes());
                    fileOutputStream.close();
                    return;
                }
                if (selectedItemPosition == 3) {
                    BufferedOutputStream bufferedOutputStream3 = new BufferedOutputStream(new FileOutputStream(file));
                    if (bitmap3.getWidth() > 8192 || bitmap3.getHeight() > 8192) {
                        bitmap3.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream3);
                    } else {
                        try {
                            if (!bitmap3.compress(Bitmap.CompressFormat.WEBP, 100, bufferedOutputStream3)) {
                                bitmap3.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream3);
                            }
                        } catch (Throwable unused3) {
                            bitmap3.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream3);
                        }
                    }
                    bufferedOutputStream3.flush();
                    bufferedOutputStream3.close();
                    return;
                }
                if (selectedItemPosition != 2) {
                    Bitmap.CompressFormat compressFormat2 = export_image_dialogVar.format.getSelectedItemPosition() == 1 ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
                    BufferedOutputStream bufferedOutputStream4 = new BufferedOutputStream(new FileOutputStream(file));
                    bitmap3.compress(compressFormat2, 100, bufferedOutputStream4);
                    bufferedOutputStream4.flush();
                    bufferedOutputStream4.close();
                    return;
                }
                PdfDocument pdfDocument = new PdfDocument();
                PdfDocument.Page startPage = pdfDocument.startPage(new PdfDocument.PageInfo.Builder(bitmap3.getWidth(), bitmap3.getHeight(), 1).create());
                startPage.getCanvas().drawBitmap(bitmap3, 0.0f, 0.0f, new Paint(7));
                pdfDocument.finishPage(startPage);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    pdfDocument.writeTo(fileOutputStream2);
                    fileOutputStream2.close();
                } catch (Throwable unused4) {
                }
                pdfDocument.close();
            }

            @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
            public void doOnBackground() {
                final boolean z2;
                try {
                    MainActivity.this.bg_layout.draw(canvas);
                    if (MainActivity.this.quoteEffect.getVisibility() == 0) {
                        MainActivity.this.quoteEffect.draw(canvas);
                    }
                    if (MainActivity.this.stripesEffect.getVisibility() == 0) {
                        MainActivity.this.stripesEffect.draw(canvas);
                    }
                    MainActivity.this.textContain.draw(canvas);
                    if (MainActivity.this.vignetteEffect.getVisibility() == 0) {
                        MainActivity.this.vignetteEffect.draw(canvas);
                    }
                    AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.52.2
                        @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                        public void doInUIThread() {
                            AnonymousClass52 anonymousClass52 = AnonymousClass52.this;
                            MainActivity mainActivity = MainActivity.this;
                            mainActivity.setProgressMessage(progressDialog, mainActivity.getString(R.string.background_saving_image));
                        }
                    });
                    final File whereToSave = getWhereToSave();
                    try {
                        saveBitmapToStorage(bitmap2, whereToSave);
                        z2 = true;
                    } catch (Throwable th) {
                        th.getMessage();
                        z2 = false;
                    }
                    AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.52.3
                        @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                        public void doInUIThread() {
                            doAfterDone();
                            if (!z2) {
                                MainActivity mainActivity = MainActivity.this;
                                mainActivity.msg(mainActivity.getString(R.string.error_save_image));
                                return;
                            }
                            AnonymousClass52 anonymousClass52 = AnonymousClass52.this;
                            MainActivity.this.dismissExportDialog(export_image_dialogVar);
                            MainActivity mainActivity2 = MainActivity.this;
                            mainActivity2.msg(mainActivity2.getString(R.string.image_saved));
                            try {
                                putInGalleryAndShare(whereToSave);
                            } catch (Error unused2) {
                            } catch (Exception e) {
                                MainActivity.this.msg("An error has occurred while sharing the image!");
                                e.getMessage();
                            }
                        }
                    });
                } catch (Throwable unused2) {
                    AsyncJob.doOnMainThread(new AsyncJob.OnMainThreadJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.52.1
                        @Override // com.arasthel.asyncjob.AsyncJob.OnMainThreadJob
                        public void doInUIThread() {
                            MainActivity mainActivity = MainActivity.this;
                            mainActivity.msg(mainActivity.getString(R.string.rendering_problem_dims));
                            doAfterDone();
                        }
                    });
                }
            }
        });
    }

    public Bundle fileJsonToBundle(FileInputStream fileInputStream) {
        JSONObject jSONObject;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            StringBuffer stringBuffer = new StringBuffer();
            char[] cArr = new char[1024];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read <= 0) {
                    try {
                        break;
                    } catch (JSONException e) {
                        e.printStackTrace();
                        jSONObject = null;
                        return BundleJSONConverter.convertToBundle(jSONObject);
                    }
                }
                stringBuffer.append(cArr, 0, read);
            }
            jSONObject = new JSONObject(stringBuffer.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            return BundleJSONConverter.convertToBundle(jSONObject);
        } catch (Exception unused) {
            return null;
        }
    }

    public Bundle fileJsonToBundle(String str) {
        try {
            return fileJsonToBundle(new FileInputStream(str));
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    public void fontApplied() {
    }

    public String[] getAvailableAutosaves() {
        String[] strArr;
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/autosave");
        final String sb2 = sb.toString();
        try {
            strArr = new File(sb2).list(new FilenameFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.21
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    if (file.isDirectory()) {
                        if (new File(sb2 + File.separator + str, "valid").exists()) {
                            return true;
                        }
                    }
                    return false;
                }
            });
        } catch (Exception unused) {
            strArr = null;
        }
        if (strArr != null && strArr.length > 0) {
            Arrays.sort(strArr, Collections.reverseOrder());
        }
        return strArr;
    }

    public String getDeviceName() {
        return Build.MANUFACTURER + " | " + Build.MODEL + " |  , Android " + Build.VERSION.CODENAME + Build.VERSION.SDK_INT + ", Screen : " + Resources.getSystem().getDisplayMetrics().widthPixels + "x" + Resources.getSystem().getDisplayMetrics().heightPixels;
    }

    public int getHeightFromMenu(PopupWindow popupWindow) {
        popupWindow.getContentView().measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        return popupWindow.getContentView().getMeasuredHeight();
    }

    public int[] getMenuOffsetForLocation(PopupWindow popupWindow, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        int[] iArr = {rect.left, 0};
        int heightFromMenu = getHeightFromMenu(popupWindow);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = rect.bottom;
        if (i + heightFromMenu <= displayMetrics.heightPixels) {
            iArr[1] = i;
        } else {
            iArr[1] = rect.top - heightFromMenu;
        }
        return iArr;
    }

    public Rect getTextStylesButtonRegion() {
        ControlsHolder controlsHolder = (ControlsHolder) getSupportFragmentManager().findFragmentByTag("fragment_tools");
        if (controlsHolder != null) {
            return controlsHolder.getTextStylesButtonRegion();
        }
        return null;
    }

    public void gridOptionsClick(View view) {
        switch (view.getId()) {
            case R.id.grid_add_h /* 2131362143 */:
                this.gridPanel.addHorizontal();
                return;
            case R.id.grid_add_v /* 2131362144 */:
                this.gridPanel.addVertical();
                return;
            case R.id.grid_float_panel /* 2131362145 */:
            case R.id.grid_setting_holder /* 2131362149 */:
            default:
                return;
            case R.id.grid_pos /* 2131362146 */:
                askPositionGrid();
                return;
            case R.id.grid_rem /* 2131362147 */:
                this.gridPanel.remMarker();
                return;
            case R.id.grid_reset /* 2131362148 */:
                askResetGrid();
                return;
            case R.id.grid_settings /* 2131362150 */:
                this.gridPanel.toggleSelection(!r2.selectionEnabled);
                return;
            case R.id.grid_snap /* 2131362151 */:
                this.gridPanel.setSnap(!r2.snapEnabled);
                return;
        }
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel.OnGridUpdated
    public void gridSelectionToggled(boolean z) {
        findViewById(R.id.grid_setting_holder).setVisibility(z ? 0 : 8);
        findViewById(R.id.grid_settings).setSelected(z);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel.OnGridUpdated
    public void gridSnapToggled(boolean z) {
        findViewById(R.id.grid_snap).setSelected(z);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.GridPanel.OnGridUpdated
    public void gridToggled(boolean z) {
        findViewById(R.id.action_grid).setSelected(z);
        findViewById(R.id.grid_float_panel).setVisibility(z ? 0 : 8);
    }

    public boolean hasBitmapBg() {
        return this.usedImage.getType() == 4;
    }

    public void hideLayers() {
        this.layersLayout.animate().x(this.layersLayoutWidth * (-1.0f)).setDuration(200L).alpha(0.0f).setListener(new Animator.AnimatorListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.51
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MainActivity.this.layersLayout.setVisibility(4);
                MainActivity.this.layersHolder.disable();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        }).start();
    }

    public boolean isOptionExpandOpen() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        ArrayList arrayList = supportFragmentManager.mBackStack;
        return ((arrayList != null ? arrayList.size() : 0) == 0 || supportFragmentManager.findFragmentByTag("option_expand") == null) ? false : true;
    }

    public void layersSelectClick(View view) {
        ImageButton imageButton;
        int i;
        if (view.getId() == R.id.layers_layout_selection) {
            this.layersHolder.toggleSelectionMode();
            if (this.layersHolder.isSelectionMode()) {
                findViewById(R.id.layers_layout_delete).setVisibility(0);
                findViewById(R.id.layers_layout_edit).setVisibility(0);
                findViewById(R.id.layers_layout_merge).setVisibility(0);
                findViewById(R.id.layers_layout_season).setVisibility(0);
                imageButton = (ImageButton) findViewById(R.id.layers_layout_selection);
                i = R.drawable.layers_select_done;
            } else {
                findViewById(R.id.layers_layout_delete).setVisibility(8);
                findViewById(R.id.layers_layout_edit).setVisibility(8);
                findViewById(R.id.layers_layout_merge).setVisibility(8);
                findViewById(R.id.layers_layout_season).setVisibility(8);
                imageButton = (ImageButton) findViewById(R.id.layers_layout_selection);
                i = R.drawable.layers_select_start;
            }
            imageButton.setImageResource(i);
            return;
        }
        final ArrayList<String> selectedReferences = this.layersHolder.getSelectedReferences();
        if (selectedReferences.size() <= 0) {
            Toast.makeText(getApplicationContext(), R.string.no_selection, 0).show();
            return;
        }
        int id = view.getId();
        if (id == R.id.layers_layout_delete) {
            this.history.startGrouping();
            this.textContain.removeObjectsByReferences(selectedReferences);
            this.history.endGrouping();
            return;
        }
        if (id == R.id.layers_layout_edit) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            PopupWindow popupWindow = this.quickMultipleMenu;
            popupWindow.showAtLocation(view, 0, iArr[0], iArr[1] - getHeightFromMenu(popupWindow));
            return;
        }
        if (id == R.id.layers_layout_merge) {
            if (selectedReferences.size() <= 1) {
                msg(getString(R.string.merge_one_object));
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(getString(R.string.confirm_operation));
            builder.setMessage(getString(R.string.merge_layers));
            builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
            builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.81
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    MainActivity.this.history.startGrouping();
                    MainActivity.this.textContain.mergeObjects(selectedReferences);
                    MainActivity.this.history.endGrouping();
                }
            });
            builder.show();
            return;
        }
        if (id == R.id.layers_layout_season) {
            if (selectedReferences.size() != 1) {
                msg("يرجى تحديد طبقة مدمجة واحدة فقط للفصل");
                return;
            }
            this.textContain.selectByReference(selectedReferences.get(0));
            if (!this.textContain.unmergeCurrentShape()) {
                msg("هذه الطبقة ليست مدمجة");
            } else {
                findViewById(R.id.layers_layout_selection).performClick();
                msg("تم فصل الطبقات بنجاح");
            }
        }
    }

    public void loadPresetFromAsset(final String str) {
        final Runnable runnable = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.53
            /* JADX WARN: Removed duplicated region for block: B:12:0x0055  */
            /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r5 = this;
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r0 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    android.content.res.AssetManager r0 = r0.getAssets()
                    r1 = 0
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L4a
                    r2.<init>()     // Catch: java.io.IOException -> L4a
                    java.lang.String r3 = r2     // Catch: java.io.IOException -> L4a
                    r2.append(r3)     // Catch: java.io.IOException -> L4a
                    java.lang.String r3 = "/data.plab"
                    r2.append(r3)     // Catch: java.io.IOException -> L4a
                    java.lang.String r2 = r2.toString()     // Catch: java.io.IOException -> L4a
                    java.io.InputStream r0 = r0.open(r2)     // Catch: java.io.IOException -> L4a
                    java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.IOException -> L4a
                    java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L4a
                    r3.<init>(r0)     // Catch: java.io.IOException -> L4a
                    r2.<init>(r3)     // Catch: java.io.IOException -> L4a
                    java.lang.StringBuffer r0 = new java.lang.StringBuffer     // Catch: java.io.IOException -> L4a
                    r0.<init>()     // Catch: java.io.IOException -> L4a
                    r3 = 1024(0x400, float:1.435E-42)
                    char[] r3 = new char[r3]     // Catch: java.io.IOException -> L4a
                L31:
                    int r4 = r2.read(r3)     // Catch: java.io.IOException -> L4a
                    if (r4 <= 0) goto L3b
                    r0.append(r3, r1, r4)     // Catch: java.io.IOException -> L4a
                    goto L31
                L3b:
                    org.json.JSONObject r2 = new org.json.JSONObject     // Catch: org.json.JSONException -> L45 java.io.IOException -> L4a
                    java.lang.String r0 = r0.toString()     // Catch: org.json.JSONException -> L45 java.io.IOException -> L4a
                    r2.<init>(r0)     // Catch: org.json.JSONException -> L45 java.io.IOException -> L4a
                    goto L4f
                L45:
                    r0 = move-exception
                    r0.printStackTrace()     // Catch: java.io.IOException -> L4a
                    goto L4e
                L4a:
                    r0 = move-exception
                    r0.printStackTrace()
                L4e:
                    r2 = 0
                L4f:
                    android.os.Bundle r0 = com.tawfiq.imaginstudio.imagetools.pixellab.BundleJSONConverter.convertToBundle(r2)     // Catch: org.json.JSONException -> L82
                    if (r0 == 0) goto L81
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r2 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    com.tawfiq.imaginstudio.imagetools.pixellab.layers.LayersHolder r2 = r2.layersHolder
                    r2.disable()
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r2 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    r2.enableLayers(r1)
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r2 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    com.tawfiq.imaginstudio.imagetools.pixellab.textContainer r2 = r2.textContain
                    r2.resetAll()
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r2 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.access$2500(r2)
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r2 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    r2.setScreenContent(r0)
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r0 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    r0.updateBackground(r1)
                    com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity r0 = com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.this
                    com.tawfiq.imaginstudio.imagetools.pixellab.ZoomWidget r0 = r0.zoomWidget
                    if (r0 == 0) goto L81
                    r1 = 1
                    r0.resetZoom(r1)
                L81:
                    return
                L82:
                    r0 = move-exception
                    r0.printStackTrace()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.AnonymousClass53.run():void");
            }
        };
        if (!doneSomething()) {
            runnable.run();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.operation_confirmation));
        builder.setMessage(getString(R.string.confirmation_apply_preset));
        builder.setPositiveButton(getApplicationContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.54
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        });
        builder.setNegativeButton(getApplicationContext().getString(android.R.string.no), (DialogInterface.OnClickListener) null);
        builder.show();
    }

    public void loadPresetFromFile(final String str, boolean z) {
        final Runnable runnable = new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.55
            @Override // java.lang.Runnable
            public void run() {
                MainActivity mainActivity = MainActivity.this;
                Bundle doOpOnBundleRes = mainActivity.doOpOnBundleRes(mainActivity.fileJsonToBundle(str + "/data.plab"), str, ResOp.fixAbsolute);
                if (doOpOnBundleRes != null) {
                    MainActivity.this.layersHolder.disable();
                    MainActivity.this.enableLayers(false);
                    MainActivity.this.textContain.resetAll();
                    MainActivity.this.clearHistory();
                    if (!str.contains("/autosave/")) {
                        doOpOnBundleRes.putString("projectDir", str);
                    }
                    MainActivity.this.setScreenContent(doOpOnBundleRes);
                    MainActivity.this.updateBackground(false);
                    ZoomWidget zoomWidget = MainActivity.this.zoomWidget;
                    if (zoomWidget != null) {
                        zoomWidget.resetZoom(true);
                    }
                }
            }
        };
        if (!doneSomething() || !z) {
            runnable.run();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(getString(R.string.operation_confirmation));
        builder.setMessage(getString(R.string.confirmation_apply_preset));
        builder.setPositiveButton(getApplicationContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.56
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                runnable.run();
            }
        });
        builder.setNegativeButton(getApplicationContext().getString(android.R.string.no), (DialogInterface.OnClickListener) null);
        builder.show();
    }

    public void loadQuickMenus() {
        createMainMenu();
        createAddNewMenu();
        createSaveMenu();
        int i = getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        ViewGroup viewGroup = (ViewGroup) getLayoutInflater().inflate(R.layout.quick_edit_text, (ViewGroup) null);
        viewGroup.setBackgroundColor(i);
        addClickListenersTo(viewGroup, History.ComponentType.text);
        PopupWindow popupWindow = new PopupWindow(this);
        this.quickTextMenu = popupWindow;
        popupWindow.setContentView(viewGroup);
        this.quickTextMenu.setWidth(-2);
        this.quickTextMenu.setHeight(-2);
        this.quickTextMenu.setBackgroundDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.quick_edit_bg));
        this.quickTextMenu.setFocusable(true);
        ViewGroup viewGroup2 = (ViewGroup) getLayoutInflater().inflate(R.layout.quick_edit_shape, (ViewGroup) null);
        viewGroup2.setBackgroundColor(i);
        addClickListenersTo(viewGroup2, History.ComponentType.shape);
        PopupWindow popupWindow2 = new PopupWindow(this);
        this.quickShapeMenu = popupWindow2;
        popupWindow2.setContentView(viewGroup2);
        this.quickShapeMenu.setWidth(-2);
        this.quickShapeMenu.setHeight(-2);
        this.quickShapeMenu.setBackgroundDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.quick_edit_bg));
        this.quickShapeMenu.setFocusable(true);
        ViewGroup viewGroup3 = (ViewGroup) getLayoutInflater().inflate(R.layout.quick_edit_multiple, (ViewGroup) null);
        viewGroup3.setBackgroundColor(i);
        addClickListenersTo(viewGroup3, History.ComponentType.multiple);
        PopupWindow popupWindow3 = new PopupWindow(this);
        this.quickMultipleMenu = popupWindow3;
        popupWindow3.setContentView(viewGroup3);
        this.quickMultipleMenu.setWidth(-2);
        this.quickMultipleMenu.setHeight(-2);
        this.quickMultipleMenu.setBackgroundDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.quick_edit_bg));
        this.quickMultipleMenu.setFocusable(true);
        ViewGroup viewGroup4 = (ViewGroup) getLayoutInflater().inflate(R.layout.text_style_popup, (ViewGroup) null);
        viewGroup4.setBackgroundColor(i);
        addClickListenersTo(viewGroup4, History.ComponentType.text);
        PopupWindow popupWindow4 = new PopupWindow(this);
        this.textStylesMenu = popupWindow4;
        popupWindow4.setContentView(viewGroup4);
        this.textStylesMenu.setWidth(-2);
        this.textStylesMenu.setHeight(-2);
        this.textStylesMenu.setBackgroundDrawable(ContextCompat.getDrawable(getApplicationContext(), R.drawable.quick_edit_bg));
        this.textStylesMenu.setFocusable(true);
    }

    public void maximizeLayers() {
        this.minimizedLayersForAction = false;
        if (this.layersLayout.getVisibility() == 0) {
            this.layersLayout.animate().x(0.0f).alpha(1.0f).setDuration(200L).setListener(null).start();
        }
    }

    public void minimizeLayers() {
        if (this.layersLayout.getVisibility() == 0) {
            this.layersLayout.animate().x((this.layersLayoutWidth - this.layersHandle.getWidth()) * (-1.0f)).setDuration(200L).alpha(0.5f).setListener(null).start();
            this.minimizedLayersForAction = true;
        }
    }

    public void msg(int i) {
        Toast.makeText(getApplicationContext(), i, 0).show();
    }

    public void msg(String str) {
        Toast.makeText(getApplicationContext(), str, 0).show();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void objectTouch() {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(final int i, final int i2, final Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != 0) {
            if (intent != null || (this.mCurrentPhotoFile != null && i == 16)) {
                this.textContain.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.42
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.activityResultLogic(i, i2, intent);
                    }
                });
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        AlertDialog.Builder positiveButton;
        ArrayList arrayList = getSupportFragmentManager().mBackStack;
        if ((arrayList != null ? arrayList.size() : 0) == 0) {
            positiveButton = new AlertDialog.Builder(this).setMessage(R.string.exit_confirm).setTitle(R.string.confirm_operation).setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null).setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    MainActivity.this.tinydb.putBoolean(MainActivity.EXITED_BY_USER, true);
                    MainActivity.super.onBackPressed();
                }
            });
        } else {
            if (this.currentAction >= 0) {
                super.onBackPressed();
                return;
            }
            positiveButton = new AlertDialog.Builder(this);
            positiveButton.setTitle(getString(R.string.operation_confirmation));
            positiveButton.setMessage(R.string.confirm_stop_op);
            positiveButton.setPositiveButton(getApplicationContext().getString(android.R.string.yes), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    MainActivity.super.onBackPressed();
                }
            });
            positiveButton.setNegativeButton(getApplicationContext().getString(android.R.string.no), (DialogInterface.OnClickListener) null);
        }
        positiveButton.show();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.colorPickerDialog.OnColorSelectedListener
    public void onColorSelected(int i) {
        getSharedPreferences("theme_prefs", 0).edit().putInt("app_color", i).apply();
        recreate();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        View view;
        new CustomAlertDialog(this).showAlertDialog();
        try {
            supportRequestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        } catch (Exception unused) {
        }
        Bundle state = getState(bundle);
        getApplicationContext();
        Objects.toString(Environment.getExternalStorageDirectory());
        deleteAppFiles();
        super.onCreate(state);
        if (state != null) {
            this.mCurrentPhotoFile = (File) state.getSerializable("currPath");
        }
        TinyDB tinyDB = new TinyDB(getApplicationContext());
        this.tinydb = tinyDB;
        this.exitedByUser = tinyDB.getBoolean(EXITED_BY_USER, true);
        if (state != null && !state.getBoolean(appStateConstants.INVALID_BUNDLE)) {
            this.instanceState = state;
        } else if (this.exitedByUser) {
            AsyncJob.doInBackground(new AsyncJob.OnBackgroundJob() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.5
                @Override // com.arasthel.asyncjob.AsyncJob.OnBackgroundJob
                public void doOnBackground() {
                    MainActivity.trimCache();
                }
            });
        }
        this.rsc = getResources();
        setContentView(R.layout.activity_main);
        this.toolsPanel = findViewById(R.id.toolsPanel);
        this.topBar = findViewById(R.id.main_topBar);
        int i = getSharedPreferences("theme_prefs", 0).getInt("app_color", -16747918);
        View view2 = this.topBar;
        if (view2 != null) {
            view2.setBackgroundColor(i);
        }
        View view3 = this.toolsPanel;
        if (view3 != null) {
            view3.setBackgroundColor(i);
        }
        View findViewById = findViewById(R.id.themeTabButton);
        if (findViewById != null && (view = (View) findViewById.getParent()) != null) {
            view.setBackgroundColor(i);
        }
        View findViewById2 = findViewById(R.id.exit_fscreen);
        this.exitFScreen = findViewById2;
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view4) {
                MainActivity.this.toggleFullscreen();
            }
        });
        ImageButton imageButton = (ImageButton) findViewById(R.id.quick_delete_action);
        ImageButton imageButton2 = (ImageButton) findViewById(R.id.quick_edit_action);
        imageButton.setColorFilter(ContextCompat.getColor(getApplicationContext(), R.color.actionbar_color));
        imageButton2.setColorFilter(ContextCompat.getColor(getApplicationContext(), R.color.actionbar_color));
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view4) {
                MainActivity.this.deleteCurrObject();
            }
        });
        loadQuickMenus();
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view4) {
                PopupWindow popupWindow;
                PopupWindow popupWindow2;
                History.ComponentType currentSelectedType = MainActivity.this.textContain.getCurrentSelectedType();
                if (currentSelectedType == null) {
                    return;
                }
                if (currentSelectedType == History.ComponentType.text && (popupWindow2 = MainActivity.this.quickTextMenu) != null) {
                    popupWindow2.showAsDropDown(view4);
                } else {
                    if (currentSelectedType != History.ComponentType.shape || (popupWindow = MainActivity.this.quickShapeMenu) == null) {
                        return;
                    }
                    popupWindow.showAsDropDown(view4);
                }
            }
        });
        this.content = (LinearLayout) findViewById(R.id.content);
        this.workingArea = (FrameLayout) findViewById(R.id.workingArea);
        this.previewPanel = (RelativeLayout) findViewById(R.id.previewPanel);
        this.previewContainer = findViewById(R.id.preview);
        this.bg_layout = (BackgroundImageHolder) findViewById(R.id.bg_holder);
        CurrImage currImage = new CurrImage(1, 1, -1);
        this.usedImage = currImage;
        this.bg_layout.setUsedImage(currImage);
        this.textContain = new textContainer(getApplicationContext());
        ZoomWidget zoomWidget = (ZoomWidget) findViewById(R.id.zoom_widget);
        this.zoomWidget = zoomWidget;
        if (zoomWidget != null) {
            zoomWidget.setChild(this.workingArea);
        }
        Boolean bool = Boolean.FALSE;
        updateUndoButtonEnabled(bool);
        updateRedoButtonEnabled(bool);
        ZoomButton zoomButton = (ZoomButton) findViewById(R.id.zoom_button);
        this.zoomButton = zoomButton;
        this.zoomWidget.setNotifyOnChange(zoomButton);
        this.zoomButton.setZoomListener(new ZoomButton.OnZoomEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.10
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomReset() {
                MainActivity.this.zoomWidget.resetZoom(false);
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.ZoomButton.OnZoomEvent
            public void zoomToggle(boolean z) {
                MainActivity.this.zoomWidget.toggleZoom(z);
            }
        });
        displayInfo displayinfo = new displayInfo(this.workingArea, this.zoomWidget);
        helperClass = displayinfo;
        displayinfo.setLayerHolderScroll((ScrollView) findViewById(R.id.layers_holder_scroll));
        helperClass.setTextContain(this.textContain);
        helperClass.setBgLayout(this.bg_layout);
        LayersHolder layersHolder = (LayersHolder) findViewById(R.id.layers_holder);
        this.layersHolder = layersHolder;
        layersHolder.setButtonsListener(this);
        this.textContain.setLayersListener(this.layersHolder);
        this.layersLayout = (LinearLayout) findViewById(R.id.layers_layout);
        ImageButton imageButton3 = (ImageButton) findViewById(R.id.layers_layout_handle);
        this.layersHandle = imageButton3;
        if (imageButton3 != null) {
            imageButton3.setOnTouchListener(this.layerHandleListener);
        }
        this.layersLayoutWidth = getResources().getDimension(R.dimen.layers_layout_width);
        BezierPanel bezierPanel = new BezierPanel(getApplicationContext());
        this.bezierPanel = bezierPanel;
        this.zoomWidget.addListener(bezierPanel);
        this.arrowPanel = new ArrowPanel(getApplicationContext());
        GridPanel gridPanel = new GridPanel(getApplicationContext());
        this.gridPanel = gridPanel;
        gridPanel.setControlsListener(this);
        this.gridPanel.setVisibility(8);
        helperClass.setGridPanel(this.gridPanel);
        this.drawingPanel = new DrawingPanel(getApplicationContext(), -16777216, 10);
        this.perspectiveTool = new PerspectiveTool(getApplicationContext());
        this.colorPickerTool = new ColorPickerTool(getApplicationContext());
        this.shapesCreatorTool = new ShapesCreator(getApplicationContext());
        this.bezierPanel.setVisibility(8);
        this.arrowPanel.setVisibility(8);
        this.drawingPanel.setVisibility(8);
        this.shapesCreatorTool.setVisibility(8);
        this.perspectiveTool.disable();
        this.colorPickerTool.disable();
        this.workingArea.addView(this.textContain, new FrameLayout.LayoutParams(-1, -1));
        this.workingArea.addView(this.bezierPanel);
        this.workingArea.addView(this.arrowPanel);
        this.workingArea.addView(this.drawingPanel);
        this.workingArea.addView(this.shapesCreatorTool);
        this.workingArea.addView(this.perspectiveTool);
        this.workingArea.addView(this.colorPickerTool);
        vignette_fg vignette_fgVar = new vignette_fg(getApplicationContext());
        this.vignetteEffect = vignette_fgVar;
        vignette_fgVar.setVisibility(8);
        this.quoteEffect = (noise_bg) findViewById(R.id.noise);
        this.stripesEffect = (stripes_bg) findViewById(R.id.stripes);
        this.autoSaveHandler = new Handler();
        this.workingArea.addView(this.vignetteEffect, new FrameLayout.LayoutParams(-1, -1));
        this.workingArea.addView(this.gridPanel);
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
        this.fragmentTools = new ControlsHolder();
        Bundle bundle2 = new Bundle(1);
        if (state != null) {
            bundle2.putInt("currTab", state.getInt("currTab"));
        }
        this.fragmentTools.setArguments(bundle2);
        ControlsHolder controlsHolder = (ControlsHolder) supportFragmentManager.findFragmentByTag("fragment_tools");
        optionExpand optionexpand = (optionExpand) supportFragmentManager.findFragmentByTag("option_expand");
        if (controlsHolder != null) {
            backStackRecord.remove(controlsHolder);
        }
        if (optionexpand != null) {
            backStackRecord.remove(optionexpand);
        }
        backStackRecord.doAddOp(R.id.toolsPanel, this.fragmentTools, "fragment_tools");
        try {
            backStackRecord.commitInternal(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.usedImage.setChangeListener(new CurrImage.OnChangeListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.11
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.ImageInfo.CurrImage.OnChangeListener
            public void typeChanged(int i2) {
                MainActivity.this.fragmentTools.informBgTypeChanged(i2 == 4);
            }
        });
        this.textContain.setSelectionListener(this);
        this.content.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.12
            @Override // java.lang.Runnable
            public void run() {
                MainActivity mainActivity = MainActivity.this;
                Bundle bundle3 = mainActivity.instanceState;
                if (bundle3 == null) {
                    Intent intent = mainActivity.getIntent();
                    String action = intent.getAction();
                    String type = intent.getType();
                    if (("android.intent.action.SEND".equals(action) || "android.intent.action.EDIT".equals(action) || "android.intent.action.VIEW".equals(action)) && type != null && type.startsWith("image/")) {
                        MainActivity.this.applyBlankPreset();
                        MainActivity.this.handleImageReceiveFromOtherApp(intent, action);
                    } else {
                        MainActivity.this.applyDefaultPreset();
                    }
                } else {
                    mainActivity.setScreenContent(bundle3);
                    MainActivity.this.updateBackground(false);
                    MainActivity mainActivity2 = MainActivity.this;
                    mainActivity2.history.fromBundle(mainActivity2.instanceState.getBundle(appStateConstants.HISTORY_UNDO));
                }
                MainActivity.this.workingArea.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MainActivity.this.doneLoadingContent();
                    }
                });
            }
        });
        checkPermissionsAndDo(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.-$$Lambda$SvX9U4d_phw5x7rJ__J-4xz32CY
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.presetsChanged();
            }
        });
        this.mContext = this;
        smContext = this;
        tg.TG(this);
        check.SignCheck(this);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        stopAutoSave();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 82) {
            return super.onKeyDown(i, keyEvent);
        }
        View findViewById = findViewById(R.id.action_menu);
        if (findViewById == null || this.hiddenNonModal) {
            return true;
        }
        findViewById.performClick();
        return true;
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onObjectZChanged(String str, int i) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        stopAutoSave();
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        sbotGuard.check(this);
        super.onResume();
        startAutoSave();
        tg.TG(this);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        Bundle bundle2 = Build.VERSION.SDK_INT >= 24 ? new Bundle() : bundle;
        Bundle bundle3 = this.instanceState;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        } else if (this.loadedContent) {
            putStateInBundle(bundle2);
            putUiStateInBundle(bundle2);
            bundle2.putSerializable("currPath", this.mCurrentPhotoFile);
            bundle2.putBundle(appStateConstants.HISTORY_UNDO, this.history.saveToBundle());
        } else {
            bundle2.putBoolean(appStateConstants.INVALID_BUNDLE, true);
        }
        saveState(bundle2, bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onShapeCreate(String str) {
        this.history.addObjectCreation(str, History.ComponentType.shape);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onShapeDelete(Bundle bundle, int i, String str) {
        this.history.addObjectDeletion(bundle, i, str, History.ComponentType.shape);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onShapeGeometryChanged(Bundle bundle, String str) {
        this.history.addAction(bundle, HistoryType.shape_action, str);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onShapeSelectionChanged(boolean z, int i) {
        this.fragmentTools.informShapeSelectionChanged(z, i);
        doneEditing();
        toggleQuickActions(z);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        startAutoSave();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        stopAutoSave();
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onTextCreate(String str) {
        this.history.addObjectCreation(str, History.ComponentType.text);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onTextDelete(Bundle bundle, int i, String str) {
        this.history.addObjectDeletion(bundle, i, str, History.ComponentType.text);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onTextDoubleTap() {
        doActionFor(3);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onTextGeometryChanged(Bundle bundle, String str) {
        this.history.addAction(bundle, HistoryType.text_action, str);
    }

    @Override // com.tawfiq.imaginstudio.imagetools.pixellab.textContainer.OnSelectionChangedListener
    public void onTextSelectionChanged(boolean z) {
        this.fragmentTools.informTextSelectionChanged(z);
        doneEditing();
        toggleQuickActions(z);
    }

    public void openAutoSaveDialog() {
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/autosave");
        final String sb2 = sb.toString();
        final String[] list = new File(sb2).list(new FilenameFilter() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.48
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (file.isDirectory()) {
                    if (new File(sb2 + File.separator + str, "valid").exists()) {
                        return true;
                    }
                }
                return false;
            }
        });
        if (list == null || list.length == 0) {
            msg(getString(R.string.no_autosave));
            return;
        }
        Arrays.sort(list, Collections.reverseOrder());
        String[] strArr = new String[list.length];
        for (int i = 0; i < list.length; i++) {
            strArr[i] = getDate(Long.parseLong(list[i]) * 1000);
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.available_autosaves);
        builder.setItems(strArr, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.49
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, final int i2) {
                AlertDialog.Builder builder2 = new AlertDialog.Builder(MainActivity.this);
                builder2.setTitle(R.string.confirm_operation);
                builder2.setMessage(R.string.confirm_recover);
                builder2.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.49.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface2, int i3) {
                        MainActivity.this.loadPresetFromFile(sb2 + File.separator + list[i2], false);
                    }
                });
                builder2.setNegativeButton(android.R.string.no, (DialogInterface.OnClickListener) null);
                builder2.show();
            }
        });
        builder.create().show();
    }

    public void optionExpandCancelAction() {
        optionExpand optionexpand = (optionExpand) getSupportFragmentManager().findFragmentByTag("option_expand");
        if (optionexpand != null) {
            optionexpand.doCancelAction();
        }
    }

    public void pickGalleryImage(final int i) {
        checkPermissionsAndDo(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.34
            @Override // java.lang.Runnable
            public void run() {
                MainActivity.this.doPickGalleryImage(i);
            }
        });
    }

    public void pickNewTexture(boolean z) {
        pickGalleryImage(z ? 45 : 19);
    }

    public void presetsChanged() {
        ControlsHolder controlsHolder = (ControlsHolder) getSupportFragmentManager().findFragmentByTag("fragment_tools");
        if (controlsHolder != null) {
            controlsHolder.informPresetsChanged();
        }
    }

    public void putStateInBundle(Bundle bundle) {
        this.textContain.bundleObjects(bundle);
        bundle.putString(appStateConstants.OBJECTS_SELECTED_REFERENCE, this.textContain.getSelectedReference());
    }

    public void quoteOpened() {
        this.openedQuotes = !this.openedQuotes;
    }

    public void recreatePreview(Bundle bundle) {
        this.textContain.recreateObjects(bundle.getBundle(appStateConstants.OBJECTS_BUNDLE), bundle.getStringArrayList(appStateConstants.OBJECTS_IDS));
        String string = bundle.getString(appStateConstants.OBJECTS_SELECTED_REFERENCE);
        if (string != null) {
            if (!string.equals("0")) {
                this.textContain.selectByReference(string);
            }
            this.textContain.selectShapeId(-1);
            this.textContain.selectTextId(-1);
        } else {
            int i = bundle.getInt(appStateConstants.SHAPES_SELECTED_ID);
            int i2 = bundle.getInt(appStateConstants.TEXTS_SELECTED_ID);
            if (i != 0 || i2 != 0) {
                this.textContain.selectShapeId(i);
                this.textContain.selectTextId(i2);
            }
            this.textContain.selectShapeId(-1);
            this.textContain.selectTextId(-1);
        }
        textContainer textcontainer = this.textContain;
        toggleQuickActions((textcontainer.curr_id == -1 && textcontainer.curr_id_shape == -1) ? false : true);
    }

    public void recreatePreviewBg(Bundle bundle) {
        if (bundle != null) {
            int i = bundle.getInt(appStateConstants.BG_TYPE, 1);
            int i2 = bundle.getInt(appStateConstants.BG_WIDTH, 1);
            int i3 = bundle.getInt(appStateConstants.BG_HEIGHT, 1);
            int i4 = bundle.getInt(appStateConstants.BG_COLOR, -1);
            String string = bundle.getString(appStateConstants.BG_GRADIENT_V2);
            GradientMaker.GradientFill gradientFill = string == null ? new GradientMaker.GradientFill(bundle.getInt(appStateConstants.BG_GRADIENT_TYPE, 1), bundle.getInt(appStateConstants.BG_GRADIENT_START, -3355444), bundle.getInt(appStateConstants.BG_GRADIENT_END, -12303292)) : new GradientMaker.GradientFill(string);
            int i5 = bundle.getInt(appStateConstants.BG_ROTATION, 0);
            if (bundle.getBoolean(appStateConstants.BG_PHOTO_V2)) {
                ImageSource imageSource = new ImageSource(bundle.getBundle(appStateConstants.BG_PHOTO_SRC));
                CropInfo cropInfo = new CropInfo(bundle.getBundle(appStateConstants.BG_PHOTO_CROP));
                this.usedImage.setOptions(imageSource, i4, gradientFill, i, i2, i3, bundle.getInt(appStateConstants.BG_ACTUAL_WIDTH), bundle.getInt(appStateConstants.BG_ACTUAL_HEIGHT), bundle.getBoolean(appStateConstants.BG_PHOTO_FORCED_DIM), i5, cropInfo.getPortion(), cropInfo.isCircular(), cropInfo.isFlipH(), cropInfo.isFlipV());
            } else {
                this.usedImage.setOptions(bundle.getString(appStateConstants.BG_PHOTO_PATH), i4, gradientFill, i, i2, i3, i5);
            }
            this.vignetteEffect.setVignetteColor(bundle.getInt(appStateConstants.EFFECT_VIGNETTE_COLOR, -16777216));
            this.vignetteEffect.setVignetteAlpha(bundle.getInt(appStateConstants.EFFECT_VIGNETTE_ALPHA, 170));
            this.quoteEffect.setNumberToRepeat(bundle.getInt(appStateConstants.EFFECT_NOISE_VAL2, 7));
            this.quoteEffect.setEffectAlpha(bundle.getInt(appStateConstants.EFFECT_NOISE_ALPHA, 50));
            this.stripesEffect.setEffectAlpha(bundle.getInt(appStateConstants.EFFECT_STRIPES_ALPHA, 90));
            this.stripesEffect.setNumberToRepeat(bundle.getInt(appStateConstants.EFFECT_STRIPES_VAL2, 10));
            boolean z = bundle.getBoolean(appStateConstants.EFFECT_VIGNETTE_ENABLED, false);
            boolean z2 = bundle.getBoolean(appStateConstants.EFFECT_NOISE_ENABLED, false);
            boolean z3 = bundle.getBoolean(appStateConstants.EFFECT_STRIPES_ENABLED, false);
            this.vignetteEffect.setVisibility(z ? 0 : 8);
            this.quoteEffect.setVisibility(z2 ? 0 : 8);
            this.stripesEffect.setVisibility(z3 ? 0 : 8);
            this.bg_layout.setEffectsNoUpdate(bundle.getInt(appStateConstants.EFFECT_BRIGHTNESS_VAL, 0), bundle.getInt(appStateConstants.EFFECT_CONTRAST_VAL, 0), bundle.getInt(appStateConstants.EFFECT_SATURATION_VAL, 0), bundle.getInt(appStateConstants.EFFECT_HUE_VAL, 0));
            this.bg_layout.setBlurRadius(bundle.getInt("effectBlurVal", 0));
        }
    }

    public void removePreset(String str) {
        commonFuncs.putEmptyFileHere(new File(str), "deleted");
    }

    public Bitmap saveAPreview() {
        if (!helperClass.safetyCheck()) {
            return Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
        }
        Bitmap createBitmap = Bitmap.createBitmap(helperClass.getContainerWidth(), helperClass.getContainerHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas();
        canvas.setBitmap(createBitmap);
        this.workingArea.draw(canvas);
        float min = Math.min(256.0f / createBitmap.getWidth(), 256.0f / createBitmap.getHeight());
        return Bitmap.createScaledBitmap(createBitmap, (int) (createBitmap.getWidth() * min), (int) (min * createBitmap.getHeight()), true);
    }

    public void saveCurrBgState() {
        Bundle bundle = new Bundle();
        putUiStateInBundle(bundle);
        this.history.addAction(bundle, HistoryType.bg_action, "");
    }

    public void saveCurrShapeState(ShapeComponent shapeComponent) {
        if (shapeComponent != null) {
            this.history.addAction(shapeComponent.saveToBundle(), HistoryType.shape_action, shapeComponent.reference);
        }
    }

    public void saveCurrTextState(TextComponent textComponent) {
        if (textComponent != null) {
            this.history.addAction(textComponent.saveToBundle(), HistoryType.text_action, textComponent.reference);
        }
    }

    public void saveCurrentAsPreset(final String str) {
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/presets/");
        sb.append(str);
        if (!new File(sb.toString()).exists()) {
            saveCurrentAsPresetOverwrite(str);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.confirm_operation);
        builder.setMessage(R.string.project_exists);
        builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.58
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.saveCurrentAsPresetOverwrite(str);
            }
        });
        builder.show();
    }

    public void saveCurrentTextAsStyle() {
        TextComponent currentText = this.textContain.getCurrentText();
        if (currentText != null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(R.string.confirm_operation);
            builder.setMessage(R.string.save_text_style);
            builder.setNegativeButton(android.R.string.cancel, (DialogInterface.OnClickListener) null);
            builder.setPositiveButton(android.R.string.yes, new AnonymousClass33(currentText));
            builder.show();
        }
    }

    public void saveJson(Bundle bundle, String str) throws Exception {
        StringBuilder sb = new StringBuilder();
        getApplicationContext();
        sb.append(Environment.getExternalStorageDirectory());
        sb.append("/pixelLab/presets/");
        sb.append(str);
        File file = new File(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        getApplicationContext();
        sb2.append(Environment.getExternalStorageDirectory());
        sb2.append("/pixelLab/presets/");
        sb2.append(str);
        sb2.append("/data.plab");
        File file2 = new File(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        getApplicationContext();
        sb3.append(Environment.getExternalStorageDirectory());
        sb3.append("/pixelLab/presets/");
        sb3.append(str);
        sb3.append("/res");
        new File(sb3.toString());
        file.mkdirs();
        StringBuilder sb4 = new StringBuilder();
        getApplicationContext();
        sb4.append(Environment.getExternalStorageDirectory());
        sb4.append("/pixelLab/presets");
        commonFuncs.putNoMediaHere(new File(sb4.toString()));
        JSONObject convertToJSON = BundleJSONConverter.convertToJSON(doOpOnBundleRes(bundle, file.getAbsolutePath(), ResOp.persist));
        if (convertToJSON != null) {
            String jSONObject = convertToJSON.toString();
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file2));
                bufferedWriter.write(jSONObject);
                bufferedWriter.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void saveStatesForReferences(ArrayList<String> arrayList) {
        History history;
        Bundle saveToBundle;
        HistoryType historyType;
        String str;
        this.history.startGrouping();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            View objectByRef = this.textContain.getObjectByRef(it.next());
            if (objectByRef instanceof TextComponent) {
                history = this.history;
                TextComponent textComponent = (TextComponent) objectByRef;
                saveToBundle = textComponent.saveToBundle();
                historyType = HistoryType.text_action;
                str = textComponent.reference;
            } else if (objectByRef instanceof ShapeComponent) {
                history = this.history;
                ShapeComponent shapeComponent = (ShapeComponent) objectByRef;
                saveToBundle = shapeComponent.saveToBundle();
                historyType = HistoryType.shape_action;
                str = shapeComponent.reference;
            }
            history.addAction(saveToBundle, historyType, str);
        }
        this.history.endGrouping();
    }

    public String saveUriToFile(Uri uri) {
        if (uri == null) {
            return null;
        }
        Context applicationContext = getApplicationContext();
        File cacheFile = commonFuncs.getCacheFile(commonFuncs.generateName("imported"), applicationContext);
        try {
            ParcelFileDescriptor openFileDescriptor = applicationContext.getContentResolver().openFileDescriptor(uri, "r");
            if (openFileDescriptor != null) {
                PdfRenderer pdfRenderer = new PdfRenderer(openFileDescriptor);
                PdfRenderer.Page openPage = pdfRenderer.openPage(0);
                Bitmap createBitmap = Bitmap.createBitmap(openPage.getWidth() * 2, openPage.getHeight() * 2, Bitmap.Config.ARGB_8888);
                new Canvas(createBitmap).drawColor(-1);
                openPage.render(createBitmap, null, null, 1);
                openPage.close();
                pdfRenderer.close();
                openFileDescriptor.close();
                FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return cacheFile.getPath();
            }
        } catch (Exception unused) {
        }
        try {
            InputStream openInputStream = applicationContext.getContentResolver().openInputStream(uri);
            if (openInputStream != null) {
                FileOutputStream fileOutputStream2 = new FileOutputStream(cacheFile);
                byte[] bArr = new byte[2048];
                while (true) {
                    int read = openInputStream.read(bArr);
                    if (read == -1) {
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        openInputStream.close();
                        return cacheFile.getPath();
                    }
                    fileOutputStream2.write(bArr, 0, read);
                }
            }
        } catch (Exception unused2) {
        }
        return null;
    }

    public void setBgFillOptions(int i, int i2, GradientMaker.GradientFill gradientFill) {
        this.usedImage.setFillOptionsNoUpdate(i, i2, gradientFill);
        updateBackground();
    }

    public void setRenderMode(boolean z, float f) {
        this.bg_layout.setRenderMode(z, f);
        this.textContain.setRenderMode(z, f);
        cleanMemory();
    }

    public void setScreenContent(final Bundle bundle) {
        this.currentProjectDir = bundle == null ? null : bundle.getString("projectDir");
        recreatePreviewBg(bundle);
        float height = this.previewPanel != null ? r0.getHeight() : 1.0f;
        float min = Math.min((this.previewPanel != null ? r2.getWidth() : 1.0f) / this.usedImage.getWidth(), height / this.usedImage.getHeight());
        float height2 = this.usedImage.getHeight() * min;
        int i = (int) height2;
        this.workingArea.getLayoutParams().height = i;
        int width = (int) (min * this.usedImage.getWidth());
        this.workingArea.getLayoutParams().width = width;
        this.displayHeight = i;
        this.displayWidth = width;
        this.workingArea.requestLayout();
        this.workingArea.post(new Runnable() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.50
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle2 = bundle;
                if (bundle2 != null) {
                    MainActivity.this.recreatePreview(bundle2);
                }
            }
        });
    }

    public void setUsedImage(CurrImage currImage) {
        currImage.shouldUnloadBitmap = true;
        this.usedImage = currImage;
        this.bg_layout.setUsedImage(currImage);
    }

    public void showExportDialog() {
        int width = this.usedImage.getWidth();
        int height = this.usedImage.getHeight();
        CurrImage currImage = this.usedImage;
        final export_image_dialog export_image_dialogVar = new export_image_dialog(this, width, height, currImage.forcedDims, currImage.getActualWidth(), this.usedImage.getActualHeight(), this.bg_layout.hasTransparency());
        export_image_dialogVar.setOnGalleryButtonClicked(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.82
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.exportImage(commonFuncs.strToInt(export_image_dialogVar.widthVal.getText().toString(), 1), commonFuncs.strToInt(export_image_dialogVar.heightVal.getText().toString(), 1), export_image_dialogVar.getSelectedFormat(), export_image_dialogVar, false, null);
            }
        });
        export_image_dialogVar.setOnShareButtonClicked(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.83
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.exportImage(commonFuncs.strToInt(export_image_dialogVar.widthVal.getText().toString(), 1), commonFuncs.strToInt(export_image_dialogVar.heightVal.getText().toString(), 1), export_image_dialogVar.getSelectedFormat(), export_image_dialogVar, true, null);
            }
        });
        export_image_dialogVar.setOnSocialMediaShare(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.84
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str;
                switch (view.getId()) {
                    case R.id.share_dropbox /* 2131362351 */:
                        str = appDefault.packageName_dropbox;
                        break;
                    case R.id.share_facebook /* 2131362352 */:
                        str = appDefault.packageName_facebook;
                        break;
                    case R.id.share_gplus /* 2131362353 */:
                        str = appDefault.packageName_gplus;
                        break;
                    case R.id.share_istagram /* 2131362354 */:
                        str = appDefault.packageName_instagram;
                        break;
                    case R.id.share_tumblr /* 2131362355 */:
                        str = appDefault.packageName_tumblr;
                        break;
                    case R.id.share_twitter /* 2131362356 */:
                        str = appDefault.packageName_twitter;
                        break;
                    case R.id.share_whatsapp /* 2131362357 */:
                        str = appDefault.packageName_whatsapp;
                        break;
                    default:
                        str = "";
                        break;
                }
                String str2 = str;
                boolean z = false;
                try {
                    MainActivity.this.getPackageManager().getApplicationInfo(str2, 0);
                    z = true;
                } catch (PackageManager.NameNotFoundException unused) {
                }
                if (z) {
                    MainActivity.this.exportImage(commonFuncs.strToInt(export_image_dialogVar.widthVal.getText().toString(), 1), commonFuncs.strToInt(export_image_dialogVar.heightVal.getText().toString(), 1), export_image_dialogVar.getSelectedFormat(), export_image_dialogVar, true, str2);
                } else {
                    AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                    builder.setTitle(MainActivity.this.getString(R.string.error_no_app));
                    builder.setMessage(MainActivity.this.getString(R.string.share_alternative));
                    builder.setPositiveButton(MainActivity.this.getString(R.string.error_save_to_gallery), new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.84.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                            export_image_dialogVar.gallerySaveButton.performClick();
                        }
                    });
                    builder.setNegativeButton(MainActivity.this.getApplicationContext().getString(android.R.string.cancel), (DialogInterface.OnClickListener) null);
                    builder.show();
                }
            }
        });
        export_image_dialogVar.show();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.app.AlertDialog, com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser] */
    public void showProjectBrowser(final boolean z) {
        new projectsBrowser(this, z, getSupportFragmentManager(), new projectsBrowser.projectPickEvent() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.59
            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.projectPickEvent
            public void loadProject(String str) {
                MainActivity.this.loadPresetFromFile(str, true);
                if (z) {
                    MainActivity.this.presetsChanged();
                }
            }

            @Override // com.tawfiq.imaginstudio.imagetools.pixellab.projectsBrowser.projectPickEvent
            public void removeProject(String str) {
                MainActivity.this.removePreset(str);
                MainActivity.this.presetsChanged();
            }
        }).show();
    }

    public void showStickerSearchDialog() {
        if (StickerSearchListener.resumeIfAvailable(this)) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("بحث عن الملصقات والملحقات");
        EditText editText = new EditText(this);
        editText.setHint("اكتب اسم الملحق (مثال: مطر، سحاب، إضاءة)...");
        builder.setView(editText);
        builder.setPositiveButton("بحث", new StickerSearchListener(this, editText));
        builder.setNegativeButton("إلغاء", (DialogInterface.OnClickListener) null);
        builder.show();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        intent.putExtra("requestCode", i);
        super.startActivityForResult(intent, i);
    }

    public void toggleLayers() {
        enableLayers(this.layersLayout.getVisibility() != 0);
    }

    public void toggleNonModalControls(boolean z) {
        toggleNonModalControls_r(z, this.topBar);
        this.hiddenNonModal = !z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
    
        r6.setVisibility(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003a, code lost:
    
        if (r5 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
    
        if (r5 != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
    
        r1 = 8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void toggleNonModalControls_r(boolean r5, android.view.View r6) {
        /*
            r4 = this;
            if (r6 != 0) goto L3
            return
        L3:
            boolean r0 = r6 instanceof android.view.ViewGroup
            r1 = 0
            r2 = 8
            if (r0 == 0) goto L31
            int r0 = r6.getId()
            r3 = 2131362450(0x7f0a0292, float:1.834468E38)
            if (r0 != r3) goto L16
            if (r5 == 0) goto L3d
            goto L3f
        L16:
            int r0 = r6.getId()
            r2 = 2131362556(0x7f0a02fc, float:1.8344896E38)
            if (r0 == r2) goto L42
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
        L21:
            int r0 = r6.getChildCount()
            if (r1 >= r0) goto L42
            android.view.View r0 = r6.getChildAt(r1)
            r4.toggleNonModalControls_r(r5, r0)
            int r1 = r1 + 1
            goto L21
        L31:
            int r0 = r6.getId()
            r3 = 2131361854(0x7f0a003e, float:1.8343472E38)
            if (r0 == r3) goto L42
            if (r5 == 0) goto L3d
            goto L3f
        L3d:
            r1 = 8
        L3f:
            r6.setVisibility(r1)
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.MainActivity.toggleNonModalControls_r(boolean, android.view.View):void");
    }

    public void undoAddLastHistory() {
        this.history.undoAddLastStep();
    }

    public void updateBackground() {
        this.bg_layout.invalidate();
        this.previewContainer.setBackgroundColor(Color.parseColor(this.bg_layout.contrastColorIsDark() ? "#212121" : "#fafafa"));
    }

    public void updateBackground(boolean z) {
        if (z) {
            this.textContain.willResize = true;
            setScreenContent(null);
        }
        updateBackground();
    }

    public void updateRedoButtonEnabled(Boolean bool) {
        ViewPropertyAnimator animate;
        float f;
        View findViewById = findViewById(R.id.action_redo);
        if (findViewById == null) {
            return;
        }
        if (bool.booleanValue()) {
            findViewById.setEnabled(true);
            animate = findViewById.animate();
            f = 1.0f;
        } else {
            findViewById.setEnabled(false);
            animate = findViewById.animate();
            f = 0.5f;
        }
        animate.alpha(f).setDuration(100L).setListener(null).start();
    }

    public void updateUndoButtonEnabled(Boolean bool) {
        ViewPropertyAnimator animate;
        float f;
        View findViewById = findViewById(R.id.action_undo);
        if (bool.booleanValue()) {
            findViewById.setEnabled(true);
            animate = findViewById.animate();
            f = 1.0f;
        } else {
            findViewById.setEnabled(false);
            animate = findViewById.animate();
            f = 0.5f;
        }
        animate.alpha(f).setDuration(100L).setListener(null).start();
    }
}
