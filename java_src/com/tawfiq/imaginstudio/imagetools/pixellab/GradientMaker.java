package com.tawfiq.imaginstudio.imagetools.pixellab;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.colorButton;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_Preview;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_controls;
import com.tawfiq.imaginstudio.imagetools.pixellab.controls.widgets.gradientTool_slider;

/* loaded from: classes.dex */
public class GradientMaker extends AlertDialog {
    View dialogLayout;
    gradientTool_controls gradientControls;
    gradientTool_Preview gradientPreview;
    gradientTool_slider gradientSlider;
    private DialogInterface.OnClickListener onClickListener;
    private OnGradientSelectedListener onGradientSelectedListener;

    /* loaded from: classes.dex */
    public static class GradientFill {
        public static final int GRADIENT_TYPE_LIN_HOR = 0;
        public static final int GRADIENT_TYPE_LIN_VER = 1;
        public static final int GRADIENT_TYPE_RADIAL = 2;
        public static final int GRADIENT_V2_TYPE_LIN = 3;
        public static final int GRADIENT_V2_TYPE_RAD = 4;
        private int endColor;
        private int[] gradV2_colors;
        private int[] gradV2_direction;
        private float[] gradV2_positions;
        private int gradV2_type;
        private int startColor;
        private int type;

        public GradientFill() {
            this.gradV2_type = 3;
            this.gradV2_direction = new int[]{50, 0, 50, 100};
            this.gradV2_colors = new int[]{-3355444, -12303292};
            this.gradV2_positions = new float[]{0.0f, 1.0f};
            this.type = 1;
            this.startColor = -3355444;
            this.endColor = -12303292;
        }

        public GradientFill(int i, int i2) {
            this.gradV2_type = 3;
            this.gradV2_direction = new int[]{50, 0, 50, 100};
            this.type = 1;
            this.startColor = -3355444;
            this.endColor = -12303292;
            this.gradV2_positions = new float[]{0.0f, 1.0f};
            this.gradV2_colors = new int[]{i, i2};
        }

        public GradientFill(int i, int i2, int i3) {
            this.gradV2_type = 3;
            this.gradV2_direction = new int[]{50, 0, 50, 100};
            this.gradV2_colors = new int[]{-3355444, -12303292};
            this.gradV2_positions = new float[]{0.0f, 1.0f};
            this.type = i;
            this.endColor = i3;
            this.startColor = i2;
            convertToV2(i, i2, i3);
        }

        public GradientFill(int i, int[] iArr, int[] iArr2, float[] fArr) {
            this.type = 1;
            this.startColor = -3355444;
            this.endColor = -12303292;
            this.gradV2_type = i;
            this.gradV2_direction = iArr;
            this.gradV2_colors = iArr2;
            this.gradV2_positions = fArr;
        }

        public GradientFill(String str) {
            this.gradV2_type = 3;
            this.gradV2_direction = new int[]{50, 0, 50, 100};
            this.gradV2_colors = new int[]{-3355444, -12303292};
            this.gradV2_positions = new float[]{0.0f, 1.0f};
            this.type = 1;
            this.startColor = -3355444;
            this.endColor = -12303292;
            if (str == null) {
                return;
            }
            String[] split = str.split(";");
            try {
                if (split[0].equals("v2")) {
                    int parseInt = Integer.parseInt(split[1]);
                    int[] stringToInt = stringToInt(split[2].split("/"));
                    int[] stringToInt2 = stringToInt(split[3].split("/"));
                    float[] stringToFloat = stringToFloat(split[4].split("/"));
                    setV2Direction(parseInt, stringToInt);
                    setV2Colors(stringToInt2, stringToFloat);
                } else {
                    this.type = Integer.valueOf(str.split(";")[0]).intValue();
                    this.startColor = Integer.valueOf(str.split(";")[1]).intValue();
                    this.endColor = Integer.valueOf(str.split(";")[2]).intValue();
                }
            } catch (IndexOutOfBoundsException unused) {
            }
        }

        private void appendArray(float[] fArr, StringBuilder sb) {
            for (int i = 0; i < fArr.length; i++) {
                sb.append(fArr[i]);
                if (i < fArr.length - 1) {
                    sb.append("/");
                }
            }
        }

        private void appendArray(int[] iArr, StringBuilder sb) {
            for (int i = 0; i < iArr.length; i++) {
                sb.append(iArr[i]);
                if (i < iArr.length - 1) {
                    sb.append("/");
                }
            }
        }

        private void convertToV2(int i, int i2, int i3) {
            this.gradV2_positions = new float[]{0.0f, 1.0f};
            this.gradV2_colors = new int[]{i2, i3};
            this.gradV2_type = i == 2 ? 4 : 3;
            if (i == 0) {
                int[] iArr = this.gradV2_direction;
                iArr[0] = 0;
                iArr[1] = 50;
                iArr[2] = 100;
                iArr[3] = 50;
                return;
            }
            if (i == 1) {
                int[] iArr2 = this.gradV2_direction;
                iArr2[0] = 50;
                iArr2[1] = 0;
                iArr2[2] = 50;
                iArr2[3] = 100;
                return;
            }
            if (i != 2) {
                return;
            }
            int[] iArr3 = this.gradV2_direction;
            iArr3[0] = 50;
            iArr3[1] = 50;
            iArr3[2] = 100;
            iArr3[3] = 100;
        }

        public String convertToStringV2() {
            StringBuilder sb = new StringBuilder();
            sb.append("v2;");
            sb.append(getGradV2_type());
            sb.append(";");
            appendArray(getGradV2_direction(), sb);
            sb.append(";");
            appendArray(getGradV2_colors(), sb);
            sb.append(";");
            appendArray(getGradV2_positions(), sb);
            return sb.toString();
        }

        public GradientFill copy() {
            return new GradientFill(this.gradV2_type, this.gradV2_direction, this.gradV2_colors, this.gradV2_positions);
        }

        public int getColorAtTopLeft() {
            int i;
            Bitmap createBitmap = Bitmap.createBitmap(2, 2, Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            paint.setShader(getShader(new Rect(0, 0, 2, 2)));
            canvas.drawRect(0.0f, 0.0f, 2.0f, 2.0f, paint);
            try {
                i = createBitmap.getPixel(0, 0);
            } catch (Exception e) {
                e.printStackTrace();
                i = -16777216;
            }
            createBitmap.recycle();
            return i;
        }

        public int getEndColor() {
            return this.endColor;
        }

        public int[] getGradV2_colors() {
            return this.gradV2_colors;
        }

        public int[] getGradV2_direction() {
            return this.gradV2_direction;
        }

        public float[] getGradV2_positions() {
            return this.gradV2_positions;
        }

        public int getGradV2_type() {
            return this.gradV2_type;
        }

        public Shader getShader(float f, float f2, float f3, float f4) {
            int i = this.gradV2_type;
            if (i == 4) {
                return new RadialGradient(f, f2, Math.max((float) Math.sqrt(Math.pow(f2 - f4, 2.0d) + Math.pow(f - f3, 2.0d)), 0.1f), this.gradV2_colors, this.gradV2_positions, Shader.TileMode.CLAMP);
            }
            if (i == 3) {
                return new LinearGradient(f, f2, f3, f4, this.gradV2_colors, this.gradV2_positions, Shader.TileMode.CLAMP);
            }
            return null;
        }

        public Shader getShader(PointF pointF, PointF pointF2) {
            return getShader(pointF.x, pointF.y, pointF2.x, pointF2.y);
        }

        public Shader getShader(Rect rect) {
            return getShader(((this.gradV2_direction[0] / 100.0f) * rect.width()) + rect.left, ((this.gradV2_direction[1] / 100.0f) * rect.height()) + rect.top, ((this.gradV2_direction[2] / 100.0f) * rect.width()) + rect.left, ((this.gradV2_direction[3] / 100.0f) * rect.height()) + rect.top);
        }

        public Shader getShader(RectF rectF) {
            return getShader((rectF.width() * (this.gradV2_direction[0] / 100.0f)) + rectF.left, (rectF.height() * (this.gradV2_direction[1] / 100.0f)) + rectF.top, (rectF.width() * (this.gradV2_direction[2] / 100.0f)) + rectF.left, (rectF.height() * (this.gradV2_direction[3] / 100.0f)) + rectF.top);
        }

        public int getStartColor() {
            return this.startColor;
        }

        public int getType() {
            return this.type;
        }

        public boolean hasAlpha() {
            for (int i : this.gradV2_colors) {
                if (Color.alpha(i) != 255) {
                    return true;
                }
            }
            return false;
        }

        public void setEndColor(int i) {
            this.endColor = i;
        }

        public void setStartColor(int i) {
            this.startColor = i;
        }

        public void setType(int i) {
            this.type = i;
        }

        public void setV2Colors(int[] iArr, float[] fArr) {
            this.gradV2_colors = iArr;
            this.gradV2_positions = fArr;
        }

        public void setV2Direction(int i, int[] iArr) {
            this.gradV2_type = i;
            this.gradV2_direction = (int[]) iArr.clone();
        }

        public float[] stringToFloat(String[] strArr) {
            float[] fArr = new float[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                fArr[i] = Float.parseFloat(strArr[i]);
            }
            return fArr;
        }

        public int[] stringToInt(String[] strArr) {
            int[] iArr = new int[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                iArr[i] = Integer.parseInt(strArr[i]);
            }
            return iArr;
        }
    }

    /* loaded from: classes.dex */
    public interface OnGradientSelectedListener {
        void onGradientSelected(GradientFill gradientFill);
    }

    public GradientMaker(Context context, GradientFill gradientFill, OnGradientSelectedListener onGradientSelectedListener) {
        super(context);
        this.onClickListener = new DialogInterface.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == -2) {
                    dialogInterface.dismiss();
                } else if (i == -1 && GradientMaker.this.onGradientSelectedListener != null) {
                    GradientMaker.this.onGradientSelectedListener.onGradientSelected(GradientMaker.this.gradientPreview.getCurrentGradient());
                }
            }
        };
        LayoutInflater layoutInflater = getLayoutInflater();
        this.onGradientSelectedListener = onGradientSelectedListener;
        this.dialogLayout = layoutInflater.inflate(R.layout.activity_gradient_maker, (ViewGroup) null);
        setButton(-1, context.getString(android.R.string.ok), this.onClickListener);
        setButton(-2, context.getString(android.R.string.cancel), this.onClickListener);
        setView(this.dialogLayout);
        this.gradientSlider = (gradientTool_slider) this.dialogLayout.findViewById(R.id.gradientSlider);
        gradientTool_Preview gradienttool_preview = (gradientTool_Preview) this.dialogLayout.findViewById(R.id.gradientPreview);
        this.gradientPreview = gradienttool_preview;
        gradienttool_preview.setDirection(gradientFill.getGradV2_type(), gradientFill.getGradV2_direction());
        this.gradientSlider.initializeColors(gradientFill.getGradV2_colors(), gradientFill.getGradV2_positions());
        gradientTool_controls gradienttool_controls = (gradientTool_controls) this.dialogLayout.findViewById(R.id.gradientControls);
        this.gradientControls = gradienttool_controls;
        gradienttool_controls.connectSlider(this.gradientSlider);
        this.gradientSlider.connectPreview(this.gradientPreview);
        fillWithGradientTypes((LinearLayout) this.dialogLayout.findViewById(R.id.gradient_types_holder));
    }

    private void addAGradientTypeButton(final int i, LinearLayout linearLayout, LinearLayout.LayoutParams layoutParams, GradientFill gradientFill) {
        gradientTool_Preview.defaultDirections.modifyGradientWith(gradientFill, i);
        colorButton colorbutton = new colorButton(this.dialogLayout.getContext(), 2, 0, gradientFill, true);
        colorbutton.setOnClickListener(new View.OnClickListener() { // from class: com.tawfiq.imaginstudio.imagetools.pixellab.GradientMaker.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                GradientMaker.this.gradientPreview.modifyDirectionsWithDefault(i);
                GradientMaker.this.gradientPreview.invalidate();
            }
        });
        linearLayout.addView(colorbutton, layoutParams);
    }

    private void fillWithGradientTypes(LinearLayout linearLayout) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dpToPixels(30), dpToPixels(30));
        int dpToPixels = dpToPixels(3);
        layoutParams.bottomMargin = dpToPixels;
        layoutParams.topMargin = dpToPixels;
        layoutParams.rightMargin = dpToPixels;
        layoutParams.leftMargin = dpToPixels;
        layoutParams.gravity = 17;
        GradientFill gradientFill = new GradientFill(Color.parseColor("#b3e5fc"), Color.parseColor("#01579b"));
        addAGradientTypeButton(1, linearLayout, layoutParams, gradientFill);
        addAGradientTypeButton(2, linearLayout, layoutParams, gradientFill);
        addAGradientTypeButton(3, linearLayout, layoutParams, gradientFill);
        addAGradientTypeButton(4, linearLayout, layoutParams, gradientFill);
        addAGradientTypeButton(5, linearLayout, layoutParams, gradientFill);
        addAGradientTypeButton(6, linearLayout, layoutParams, gradientFill);
    }

    public int dpToPixels(int i) {
        return (int) TypedValue.applyDimension(1, i, this.dialogLayout.getResources().getDisplayMetrics());
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout(-1, -1);
        getWindow().setFlags(1024, 1024);
    }
}
