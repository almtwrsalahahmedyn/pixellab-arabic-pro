package com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject;

import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;

/* loaded from: classes.dex */
public class BoundedShape {
    public ShapeLabel currShapeLabel;
    Path currentPath;
    boolean isPreview;
    public int rect_roundedCorners = 0;
    public int aspectX = 1;
    public int aspectY = 1;
    public handlesToggle activeHandles = new handlesToggle();

    /* renamed from: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel;

        static {
            int[] iArr = new int[ShapeLabel.values().length];
            $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel = iArr;
            try {
                iArr[ShapeLabel.arrow.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.darrow.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.varrow.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.bubble1.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.bubble2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.post.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.cpost.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.arc.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.tri1.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.tri2.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.oval.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.rect.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.star.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.heart.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.lightning.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.diamond.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.pent.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.hex.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.bubble3.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.oct.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.exit.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[ShapeLabel.drop.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel;
                iArr2[ShapeLabel.para_r.ordinal()] = 23;
                iArr2[ShapeLabel.para_l.ordinal()] = 24;
                iArr2[ShapeLabel.trap_up.ordinal()] = 25;
                iArr2[ShapeLabel.trap_down.ordinal()] = 26;
                iArr2[ShapeLabel.banner_tag.ordinal()] = 27;
                iArr2[ShapeLabel.shield.ordinal()] = 28;
                iArr2[ShapeLabel.plus.ordinal()] = 29;
                iArr2[ShapeLabel.star8.ordinal()] = 30;
                iArr2[ShapeLabel.badge_oct.ordinal()] = 31;
                iArr2[ShapeLabel.chat_modern.ordinal()] = 32;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes.dex */
    public static final class ShapeLabel {
        private static final /* synthetic */ ShapeLabel[] $VALUES;
        public static final ShapeLabel arc;
        public static final ShapeLabel arrow;
        public static final ShapeLabel bubble1;
        public static final ShapeLabel bubble2;
        public static final ShapeLabel bubble3;
        public static final ShapeLabel cpost;
        public static final ShapeLabel darrow;
        public static final ShapeLabel diamond;
        public static final ShapeLabel drop;
        public static final ShapeLabel exit;
        public static final ShapeLabel heart;
        public static final ShapeLabel hex;
        public static final ShapeLabel lightning;
        public static final ShapeLabel oct;
        public static final ShapeLabel oval;
        public static final ShapeLabel pent;
        public static final ShapeLabel post;
        public static final ShapeLabel rect;
        public static final ShapeLabel s001 = null;
        public static final ShapeLabel s002 = null;
        public static final ShapeLabel s003 = null;
        public static final ShapeLabel s004 = null;
        public static final ShapeLabel s005 = null;
        public static final ShapeLabel s006 = null;
        public static final ShapeLabel s007 = null;
        public static final ShapeLabel s008 = null;
        public static final ShapeLabel s009 = null;
        public static final ShapeLabel s010 = null;
        public static final ShapeLabel s011 = null;
        public static final ShapeLabel s012 = null;
        public static final ShapeLabel s013 = null;
        public static final ShapeLabel s014 = null;
        public static final ShapeLabel s015 = null;
        public static final ShapeLabel s016 = null;
        public static final ShapeLabel s017 = null;
        public static final ShapeLabel s018 = null;
        public static final ShapeLabel s019 = null;
        public static final ShapeLabel s020 = null;
        public static final ShapeLabel s021 = null;
        public static final ShapeLabel s022 = null;
        public static final ShapeLabel s023 = null;
        public static final ShapeLabel s024 = null;
        public static final ShapeLabel s025 = null;
        public static final ShapeLabel s026 = null;
        public static final ShapeLabel s027 = null;
        public static final ShapeLabel s028 = null;
        public static final ShapeLabel s029 = null;
        public static final ShapeLabel s030 = null;
        public static final ShapeLabel s031 = null;
        public static final ShapeLabel s032 = null;
        public static final ShapeLabel s033 = null;
        public static final ShapeLabel s034 = null;
        public static final ShapeLabel s035 = null;
        public static final ShapeLabel s036 = null;
        public static final ShapeLabel s037 = null;
        public static final ShapeLabel s038 = null;
        public static final ShapeLabel s039 = null;
        public static final ShapeLabel s040 = null;
        public static final ShapeLabel s041 = null;
        public static final ShapeLabel s042 = null;
        public static final ShapeLabel s043 = null;
        public static final ShapeLabel s044 = null;
        public static final ShapeLabel s045 = null;
        public static final ShapeLabel s046 = null;
        public static final ShapeLabel s047 = null;
        public static final ShapeLabel s048 = null;
        public static final ShapeLabel s049 = null;
        public static final ShapeLabel s050 = null;
        public static final ShapeLabel s051 = null;
        public static final ShapeLabel s052 = null;
        public static final ShapeLabel s053 = null;
        public static final ShapeLabel s054 = null;
        public static final ShapeLabel s055 = null;
        public static final ShapeLabel s056 = null;
        public static final ShapeLabel s057 = null;
        public static final ShapeLabel s058 = null;
        public static final ShapeLabel s059 = null;
        public static final ShapeLabel s060 = null;
        public static final ShapeLabel s061 = null;
        public static final ShapeLabel s062 = null;
        public static final ShapeLabel s063 = null;
        public static final ShapeLabel s064 = null;
        public static final ShapeLabel s065 = null;
        public static final ShapeLabel s066 = null;
        public static final ShapeLabel s067 = null;
        public static final ShapeLabel s068 = null;
        public static final ShapeLabel s069 = null;
        public static final ShapeLabel s070 = null;
        public static final ShapeLabel s071 = null;
        public static final ShapeLabel s072 = null;
        public static final ShapeLabel s073 = null;
        public static final ShapeLabel s074 = null;
        public static final ShapeLabel s075 = null;
        public static final ShapeLabel s076 = null;
        public static final ShapeLabel s077 = null;
        public static final ShapeLabel s078 = null;
        public static final ShapeLabel s079 = null;
        public static final ShapeLabel s080 = null;
        public static final ShapeLabel s081 = null;
        public static final ShapeLabel s082 = null;
        public static final ShapeLabel s083 = null;
        public static final ShapeLabel s084 = null;
        public static final ShapeLabel s085 = null;
        public static final ShapeLabel s086 = null;
        public static final ShapeLabel s087 = null;
        public static final ShapeLabel s088 = null;
        public static final ShapeLabel s089 = null;
        public static final ShapeLabel s090 = null;
        public static final ShapeLabel s091 = null;
        public static final ShapeLabel s092 = null;
        public static final ShapeLabel s093 = null;
        public static final ShapeLabel s094 = null;
        public static final ShapeLabel s095 = null;
        public static final ShapeLabel s096 = null;
        public static final ShapeLabel s097 = null;
        public static final ShapeLabel s098 = null;
        public static final ShapeLabel s099 = null;
        public static final ShapeLabel s100 = null;
        public static final ShapeLabel star;
        public static final ShapeLabel tri1;
        public static final ShapeLabel tri2;
        public static final ShapeLabel varrow;

        static {
            ShapeLabel[] shapeLabelArr = new ShapeLabel[122];
            ShapeLabel shapeLabel = new ShapeLabel("rect", 0);
            rect = shapeLabel;
            shapeLabelArr[0] = shapeLabel;
            ShapeLabel shapeLabel2 = new ShapeLabel("oval", 1);
            oval = shapeLabel2;
            shapeLabelArr[1] = shapeLabel2;
            ShapeLabel shapeLabel3 = new ShapeLabel("arc", 2);
            arc = shapeLabel3;
            shapeLabelArr[2] = shapeLabel3;
            ShapeLabel shapeLabel4 = new ShapeLabel("arrow", 3);
            arrow = shapeLabel4;
            shapeLabelArr[3] = shapeLabel4;
            ShapeLabel shapeLabel5 = new ShapeLabel("tri1", 4);
            tri1 = shapeLabel5;
            shapeLabelArr[4] = shapeLabel5;
            ShapeLabel shapeLabel6 = new ShapeLabel("tri2", 5);
            tri2 = shapeLabel6;
            shapeLabelArr[5] = shapeLabel6;
            ShapeLabel shapeLabel7 = new ShapeLabel("star", 6);
            star = shapeLabel7;
            shapeLabelArr[6] = shapeLabel7;
            ShapeLabel shapeLabel8 = new ShapeLabel("heart", 7);
            heart = shapeLabel8;
            shapeLabelArr[7] = shapeLabel8;
            ShapeLabel shapeLabel9 = new ShapeLabel("lightning", 8);
            lightning = shapeLabel9;
            shapeLabelArr[8] = shapeLabel9;
            ShapeLabel shapeLabel10 = new ShapeLabel("diamond", 9);
            diamond = shapeLabel10;
            shapeLabelArr[9] = shapeLabel10;
            ShapeLabel shapeLabel11 = new ShapeLabel("pent", 10);
            pent = shapeLabel11;
            shapeLabelArr[10] = shapeLabel11;
            ShapeLabel shapeLabel12 = new ShapeLabel("hex", 11);
            hex = shapeLabel12;
            shapeLabelArr[11] = shapeLabel12;
            ShapeLabel shapeLabel13 = new ShapeLabel("bubble1", 12);
            bubble1 = shapeLabel13;
            shapeLabelArr[12] = shapeLabel13;
            ShapeLabel shapeLabel14 = new ShapeLabel("bubble2", 13);
            bubble2 = shapeLabel14;
            shapeLabelArr[13] = shapeLabel14;
            ShapeLabel shapeLabel15 = new ShapeLabel("bubble3", 14);
            bubble3 = shapeLabel15;
            shapeLabelArr[14] = shapeLabel15;
            ShapeLabel shapeLabel16 = new ShapeLabel("darrow", 15);
            darrow = shapeLabel16;
            shapeLabelArr[15] = shapeLabel16;
            ShapeLabel shapeLabel17 = new ShapeLabel("varrow", 16);
            varrow = shapeLabel17;
            shapeLabelArr[16] = shapeLabel17;
            ShapeLabel shapeLabel18 = new ShapeLabel("oct", 17);
            oct = shapeLabel18;
            shapeLabelArr[17] = shapeLabel18;
            ShapeLabel shapeLabel19 = new ShapeLabel("exit", 18);
            exit = shapeLabel19;
            shapeLabelArr[18] = shapeLabel19;
            ShapeLabel shapeLabel20 = new ShapeLabel("post", 19);
            post = shapeLabel20;
            shapeLabelArr[19] = shapeLabel20;
            ShapeLabel shapeLabel21 = new ShapeLabel("cpost", 20);
            cpost = shapeLabel21;
            shapeLabelArr[20] = shapeLabel21;
            ShapeLabel shapeLabel22 = new ShapeLabel("drop", 21);
            drop = shapeLabel22;
            shapeLabelArr[21] = shapeLabel22;
            for (int i = 22; i < 122; i++) {
                StringBuilder sb = new StringBuilder();
                sb.append("s");
                sb.append(i - 21);
                shapeLabelArr[i] = new ShapeLabel(sb.toString(), i);
            }
            $VALUES = shapeLabelArr;
        }

        private ShapeLabel(String str, int i) {
        }

        public static ShapeLabel valueOf(String str) {
            return (ShapeLabel) Enum.valueOf(ShapeLabel.class, str);
        }

        public static ShapeLabel[] values() {
            return (ShapeLabel[]) $VALUES.clone();
        }
    }

    /* loaded from: classes.dex */
    public class handlesToggle {
        boolean active_00 = true;
        boolean active_10 = true;
        boolean active_11 = true;
        boolean active_01 = true;
        boolean active_H0 = true;
        boolean active_1H = true;
        boolean active_H1 = true;
        boolean active_0H = true;

        public handlesToggle() {
        }

        public void applyPreset1() {
            this.active_11 = true;
            this.active_0H = true;
            this.active_H0 = true;
            this.active_01 = false;
            this.active_10 = false;
            this.active_00 = false;
            this.active_H1 = false;
            this.active_1H = false;
        }

        public void toggleAll(boolean z) {
            this.active_01 = z;
            this.active_11 = z;
            this.active_10 = z;
            this.active_00 = z;
            this.active_0H = z;
            this.active_H1 = z;
            this.active_1H = z;
            this.active_H0 = z;
        }

        public void toggleMain(boolean z) {
            this.active_01 = z;
            this.active_11 = z;
            this.active_10 = z;
            this.active_00 = z;
        }

        public void toggleSecondary(boolean z) {
            this.active_0H = z;
            this.active_H1 = z;
            this.active_1H = z;
            this.active_H0 = z;
        }
    }

    public BoundedShape(ShapeLabel shapeLabel, boolean z) {
        this.currShapeLabel = ShapeLabel.rect;
        this.currShapeLabel = shapeLabel;
        this.isPreview = z;
        setAspect();
        setHandles();
        this.currentPath = new Path();
    }

    private void addPointsToPath(float[] fArr, float[] fArr2, float f, float f2) {
        addPointsToPath(fArr, fArr2, f, f2, true);
    }

    private void addPointsToPath(float[] fArr, float[] fArr2, float f, float f2, boolean z) {
        int min = Math.min(fArr.length, fArr2.length);
        if (min > 1) {
            for (int i = 0; i < min; i++) {
                Path path = this.currentPath;
                if (i == 0) {
                    path.moveTo(fArr[i] * f, fArr2[i] * f2);
                } else {
                    path.lineTo(fArr[i] * f, fArr2[i] * f2);
                }
            }
            if (z) {
                this.currentPath.close();
            }
        }
    }

    private void drawCustom100(int i, float f, float f2) {
        Path path = this.currentPath;
        int max = Math.max(i - 22, 0);
        int i2 = max / 20;
        int i3 = max % 20;
        float f3 = f * 0.5f;
        float f4 = f2 * 0.5f;
        float min = Math.min(f3, f4);
        int i4 = i3 + 3;
        if (i2 > 0) {
            i4 = i3 + 4;
        }
        int i5 = i4;
        if (i2 >= 1 && i2 <= 3) {
            i5 = i4 * 2;
        }
        if (i2 == 4) {
            i5 = i4 * 4;
        }
        for (int i6 = 0; i6 < i5; i6++) {
            float f5 = ((i6 * 6.2831855f) / i5) - 1.4292036f;
            float f6 = min;
            if (i2 != 0) {
                if (i2 == 1) {
                    if (i6 % 2 != 0) {
                        f6 *= 0.4f;
                    }
                } else if (i2 == 2) {
                    if (i6 % 2 != 0) {
                        f6 *= 0.7f;
                    }
                } else if (i2 == 3) {
                    if (i6 % 2 != 0) {
                        f6 *= 0.15f;
                    }
                } else if (i6 % 4 > 1) {
                    f6 *= 0.8f;
                }
            }
            float cos = (((float) Math.cos(f5)) * f6) + f3;
            float sin = (((float) Math.sin(f5)) * f6) + f4;
            if (i6 == 0) {
                path.moveTo(cos, sin);
            } else {
                path.lineTo(cos, sin);
            }
        }
        path.close();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0012. Please report as an issue. */
    private void setAspect() {
        int i;
        int i2 = 1;
        this.aspectX = 1;
        this.aspectY = 1;
        switch (AnonymousClass1.$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[this.currShapeLabel.ordinal()]) {
            case 1:
            case 2:
                this.aspectX = 26;
                this.aspectY = 5;
                return;
            case 3:
                this.aspectX = 5;
                this.aspectY = 26;
                return;
            case 4:
                this.aspectX = 9;
                i2 = 7;
                this.aspectY = i2;
                return;
            case 5:
                this.aspectX = 19;
                i2 = 17;
                this.aspectY = i2;
                return;
            case 6:
            case 7:
                i = 3;
                this.aspectX = i;
                this.aspectY = i2;
                return;
            case 8:
                i = 2;
                this.aspectX = i;
                this.aspectY = i2;
                return;
            default:
                return;
        }
    }

    private void setHandles() {
        int i = AnonymousClass1.$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$BoundedShape$ShapeLabel[this.currShapeLabel.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            this.activeHandles.toggleAll(false);
            handlesToggle handlestoggle = this.activeHandles;
            handlestoggle.active_1H = true;
            handlestoggle.active_H1 = true;
            return;
        }
        switch (i) {
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                handlesToggle handlestoggle2 = this.activeHandles;
                handlestoggle2.active_00 = false;
                handlestoggle2.active_01 = false;
                handlestoggle2.active_10 = false;
                return;
            default:
                this.activeHandles.applyPreset1();
                return;
        }
    }

    public RectF getInitialArea(int i, int i2, boolean z) {
        if (i == 0 || i2 == 0) {
            i = 1;
            i2 = 1;
        }
        float min = Math.min(i / this.aspectX, i2 / this.aspectY);
        RectF rectF = new RectF(0.0f, 0.0f, this.aspectX * min, this.aspectY * min);
        if (z) {
            rectF.right /= 2.0f;
            rectF.bottom /= 2.0f;
        }
        Point point = new Point(i / 2, i2 / 2);
        rectF.offset(point.x - rectF.centerX(), point.y - rectF.centerY());
        return rectF;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ProcessInstructionsVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Payload for fill-array not found at 0x0796
        	at jadx.core.dex.visitors.ProcessInstructionsVisitor.initJumps(ProcessInstructionsVisitor.java:112)
        	at jadx.core.dex.visitors.ProcessInstructionsVisitor.visit(ProcessInstructionsVisitor.java:41)
        */
    public android.graphics.Path getPath(android.graphics.RectF r49) {
        /*
            Method dump skipped, instructions count: 1990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tawfiq.imaginstudio.imagetools.pixellab.ShapeObject.BoundedShape.getPath(android.graphics.RectF):android.graphics.Path");
    }

    public void setShape(ShapeLabel shapeLabel) {
        this.currShapeLabel = shapeLabel;
        setAspect();
        this.activeHandles.toggleAll(true);
        setHandles();
        this.currentPath.reset();
    }
}
