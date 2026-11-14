package androidx.core.graphics;

import android.graphics.Path;

/* loaded from: classes.dex */
public final class PathParser {

    /* loaded from: classes.dex */
    public final class ExtractFloatResult {
        public boolean mEndWithNegOrDot;
    }

    /* loaded from: classes.dex */
    public final class PathDataNode {
        public float[] mParams;
        public char mType;

        public static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            double radians = Math.toRadians(f7);
            double cos = Math.cos(radians);
            double sin = Math.sin(radians);
            double d3 = f;
            double d4 = f2;
            double d5 = (d4 * sin) + (d3 * cos);
            double d6 = d3;
            double d7 = f5;
            double d8 = d5 / d7;
            double d9 = f6;
            double d10 = ((d4 * cos) + ((-f) * sin)) / d9;
            double d11 = d4;
            double d12 = f4;
            double d13 = ((d12 * sin) + (f3 * cos)) / d7;
            double d14 = ((d12 * cos) + ((-f3) * sin)) / d9;
            double d15 = d8 - d13;
            double d16 = d10 - d14;
            double d17 = (d8 + d13) / 2.0d;
            double d18 = (d10 + d14) / 2.0d;
            double d19 = (d16 * d16) + (d15 * d15);
            if (d19 == 0.0d) {
                return;
            }
            double d20 = (1.0d / d19) - 0.25d;
            if (d20 < 0.0d) {
                float sqrt = (float) (Math.sqrt(d19) / 1.99999d);
                drawArc(path, f, f2, f3, f4, f5 * sqrt, f6 * sqrt, f7, z, z2);
                return;
            }
            double sqrt2 = Math.sqrt(d20);
            double d21 = d15 * sqrt2;
            double d22 = sqrt2 * d16;
            if (z == z2) {
                d = d17 - d22;
                d2 = d18 + d21;
            } else {
                d = d17 + d22;
                d2 = d18 - d21;
            }
            double atan2 = Math.atan2(d10 - d2, d8 - d);
            double atan22 = Math.atan2(d14 - d2, d13 - d) - atan2;
            int i = 0;
            if (z2 != (atan22 >= 0.0d)) {
                atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
            }
            double d23 = d * d7;
            double d24 = d2 * d9;
            double d25 = (d23 * cos) - (d24 * sin);
            double d26 = (d24 * cos) + (d23 * sin);
            int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
            double cos2 = Math.cos(radians);
            double sin2 = Math.sin(radians);
            double cos3 = Math.cos(atan2);
            double sin3 = Math.sin(atan2);
            double d27 = -d7;
            double d28 = d27 * cos2;
            double d29 = d9 * sin2;
            double d30 = (d28 * sin3) - (d29 * cos3);
            double d31 = d27 * sin2;
            double d32 = d9 * cos2;
            double d33 = (cos3 * d32) + (sin3 * d31);
            double d34 = atan22 / ceil;
            double d35 = atan2;
            while (i < ceil) {
                double d36 = d35 + d34;
                double sin4 = Math.sin(d36);
                double cos4 = Math.cos(d36);
                double d37 = d34;
                double d38 = (((d7 * cos2) * cos4) + d25) - (d29 * sin4);
                double d39 = d25;
                double d40 = (d32 * sin4) + (d7 * sin2 * cos4) + d26;
                double d41 = (d28 * sin4) - (d29 * cos4);
                double d42 = (cos4 * d32) + (sin4 * d31);
                double d43 = d36 - d35;
                double tan = Math.tan(d43 / 2.0d);
                double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d43)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) ((d30 * sqrt3) + d6), (float) ((d33 * sqrt3) + d11), (float) (d38 - (sqrt3 * d41)), (float) (d40 - (sqrt3 * d42)), (float) d38, (float) d40);
                i++;
                d32 = d32;
                d31 = d31;
                ceil = ceil;
                cos2 = cos2;
                d35 = d36;
                d7 = d7;
                d33 = d42;
                d30 = d41;
                d6 = d38;
                d11 = d40;
                d34 = d37;
                d25 = d39;
            }
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            int i;
            int i2;
            float[] fArr;
            char c;
            int i3;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            float f19;
            float f20;
            float f21;
            PathDataNode[] pathDataNodeArr2 = pathDataNodeArr;
            float[] fArr2 = new float[6];
            char c2 = 'm';
            char c3 = 0;
            char c4 = 'm';
            int i4 = 0;
            while (i4 < pathDataNodeArr2.length) {
                PathDataNode pathDataNode = pathDataNodeArr2[i4];
                char c5 = pathDataNode.mType;
                float[] fArr3 = pathDataNode.mParams;
                float f22 = fArr2[c3];
                float f23 = fArr2[1];
                float f24 = fArr2[2];
                float f25 = fArr2[3];
                float f26 = fArr2[4];
                float f27 = fArr2[5];
                switch (c5) {
                    case 'A':
                    case 'a':
                        i = 7;
                        break;
                    case 'C':
                    case 'c':
                        i = 6;
                        break;
                    case 'H':
                    case 'V':
                    case 'h':
                    case 'v':
                        i = 1;
                        break;
                    case 'Q':
                    case 'S':
                    case 'q':
                    case 's':
                        i = 4;
                        break;
                    case 'Z':
                    case 'z':
                        path.close();
                        path.moveTo(f26, f27);
                        f22 = f26;
                        f24 = f22;
                        f23 = f27;
                        f25 = f23;
                        break;
                }
                i = 2;
                float f28 = f26;
                float f29 = f27;
                float f30 = f22;
                float f31 = f23;
                int i5 = 0;
                while (i5 < fArr3.length) {
                    if (c5 != 'A') {
                        if (c5 != 'C') {
                            if (c5 == 'H') {
                                i2 = i5;
                                fArr = fArr3;
                                c = c5;
                                i3 = i4;
                                int i6 = i2 + 0;
                                path.lineTo(fArr[i6], f31);
                                f30 = fArr[i6];
                            } else if (c5 == 'Q') {
                                i2 = i5;
                                fArr = fArr3;
                                c = c5;
                                i3 = i4;
                                int i7 = i2 + 0;
                                int i8 = i2 + 1;
                                int i9 = i2 + 2;
                                int i10 = i2 + 3;
                                path.quadTo(fArr[i7], fArr[i8], fArr[i9], fArr[i10]);
                                f = fArr[i7];
                                f2 = fArr[i8];
                                f30 = fArr[i9];
                                f31 = fArr[i10];
                            } else if (c5 == 'V') {
                                i2 = i5;
                                fArr = fArr3;
                                c = c5;
                                i3 = i4;
                                int i11 = i2 + 0;
                                path.lineTo(f30, fArr[i11]);
                                f31 = fArr[i11];
                            } else if (c5 != 'a') {
                                if (c5 != 'c') {
                                    if (c5 == 'h') {
                                        i2 = i5;
                                        int i12 = i2 + 0;
                                        path.rLineTo(fArr3[i12], 0.0f);
                                        f30 += fArr3[i12];
                                    } else if (c5 != 'q') {
                                        if (c5 != 'v') {
                                            if (c5 != 'L') {
                                                if (c5 == 'M') {
                                                    i2 = i5;
                                                    f12 = fArr3[i2 + 0];
                                                    f13 = fArr3[i2 + 1];
                                                    if (i2 > 0) {
                                                        path.lineTo(f12, f13);
                                                    } else {
                                                        path.moveTo(f12, f13);
                                                        f28 = f12;
                                                        f29 = f13;
                                                    }
                                                } else if (c5 == 'S') {
                                                    i2 = i5;
                                                    float f32 = f31;
                                                    float f33 = f30;
                                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                                        f14 = (f32 * 2.0f) - f25;
                                                        f15 = (f33 * 2.0f) - f24;
                                                    } else {
                                                        f15 = f33;
                                                        f14 = f32;
                                                    }
                                                    int i13 = i2 + 0;
                                                    int i14 = i2 + 1;
                                                    int i15 = i2 + 2;
                                                    int i16 = i2 + 3;
                                                    path.cubicTo(f15, f14, fArr3[i13], fArr3[i14], fArr3[i15], fArr3[i16]);
                                                    float f34 = fArr3[i13];
                                                    float f35 = fArr3[i14];
                                                    f9 = fArr3[i15];
                                                    f8 = fArr3[i16];
                                                    f24 = f34;
                                                    f25 = f35;
                                                    f30 = f9;
                                                    f31 = f8;
                                                } else if (c5 == 'T') {
                                                    i2 = i5;
                                                    float f36 = f31;
                                                    float f37 = f30;
                                                    if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                                        f16 = (f37 * 2.0f) - f24;
                                                        f17 = (f36 * 2.0f) - f25;
                                                    } else {
                                                        f16 = f37;
                                                        f17 = f36;
                                                    }
                                                    int i17 = i2 + 0;
                                                    int i18 = i2 + 1;
                                                    path.quadTo(f16, f17, fArr3[i17], fArr3[i18]);
                                                    f25 = f17;
                                                    f24 = f16;
                                                    fArr = fArr3;
                                                    c = c5;
                                                    i3 = i4;
                                                    f30 = fArr3[i17];
                                                    f31 = fArr3[i18];
                                                } else if (c5 == 'l') {
                                                    i2 = i5;
                                                    f10 = f31;
                                                    int i19 = i2 + 0;
                                                    int i20 = i2 + 1;
                                                    path.rLineTo(fArr3[i19], fArr3[i20]);
                                                    f30 += fArr3[i19];
                                                    f11 = fArr3[i20];
                                                } else if (c5 == c2) {
                                                    i2 = i5;
                                                    float f38 = fArr3[i2 + 0];
                                                    f30 += f38;
                                                    float f39 = fArr3[i2 + 1];
                                                    f31 += f39;
                                                    if (i2 > 0) {
                                                        path.rLineTo(f38, f39);
                                                    } else {
                                                        path.rMoveTo(f38, f39);
                                                        f29 = f31;
                                                        f28 = f30;
                                                    }
                                                } else if (c5 != 's') {
                                                    if (c5 == 't') {
                                                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                                                            f20 = f30 - f24;
                                                            f21 = f31 - f25;
                                                        } else {
                                                            f21 = 0.0f;
                                                            f20 = 0.0f;
                                                        }
                                                        int i21 = i5 + 0;
                                                        int i22 = i5 + 1;
                                                        path.rQuadTo(f20, f21, fArr3[i21], fArr3[i22]);
                                                        float f40 = f20 + f30;
                                                        float f41 = f21 + f31;
                                                        f30 += fArr3[i21];
                                                        f31 += fArr3[i22];
                                                        f25 = f41;
                                                        f24 = f40;
                                                    }
                                                    i2 = i5;
                                                } else {
                                                    if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                                                        f18 = f31 - f25;
                                                        f19 = f30 - f24;
                                                    } else {
                                                        f19 = 0.0f;
                                                        f18 = 0.0f;
                                                    }
                                                    int i23 = i5 + 0;
                                                    int i24 = i5 + 1;
                                                    int i25 = i5 + 2;
                                                    int i26 = i5 + 3;
                                                    i2 = i5;
                                                    f3 = f31;
                                                    float f42 = f30;
                                                    path.rCubicTo(f19, f18, fArr3[i23], fArr3[i24], fArr3[i25], fArr3[i26]);
                                                    f4 = fArr3[i23] + f42;
                                                    f5 = fArr3[i24] + f3;
                                                    f6 = f42 + fArr3[i25];
                                                    f7 = fArr3[i26];
                                                }
                                                f30 = f28;
                                                f31 = f29;
                                            } else {
                                                i2 = i5;
                                                int i27 = i2 + 0;
                                                int i28 = i2 + 1;
                                                path.lineTo(fArr3[i27], fArr3[i28]);
                                                f12 = fArr3[i27];
                                                f13 = fArr3[i28];
                                            }
                                            f30 = f12;
                                            f31 = f13;
                                        } else {
                                            i2 = i5;
                                            f10 = f31;
                                            int i29 = i2 + 0;
                                            path.rLineTo(0.0f, fArr3[i29]);
                                            f11 = fArr3[i29];
                                        }
                                        f31 = f10 + f11;
                                    } else {
                                        i2 = i5;
                                        f3 = f31;
                                        float f43 = f30;
                                        int i30 = i2 + 0;
                                        int i31 = i2 + 1;
                                        int i32 = i2 + 2;
                                        int i33 = i2 + 3;
                                        path.rQuadTo(fArr3[i30], fArr3[i31], fArr3[i32], fArr3[i33]);
                                        f4 = fArr3[i30] + f43;
                                        f5 = fArr3[i31] + f3;
                                        float f44 = f43 + fArr3[i32];
                                        float f45 = fArr3[i33];
                                        f6 = f44;
                                        f7 = f45;
                                    }
                                    fArr = fArr3;
                                    c = c5;
                                    i3 = i4;
                                } else {
                                    i2 = i5;
                                    f3 = f31;
                                    float f46 = f30;
                                    int i34 = i2 + 2;
                                    int i35 = i2 + 3;
                                    int i36 = i2 + 4;
                                    int i37 = i2 + 5;
                                    path.rCubicTo(fArr3[i2 + 0], fArr3[i2 + 1], fArr3[i34], fArr3[i35], fArr3[i36], fArr3[i37]);
                                    f4 = fArr3[i34] + f46;
                                    f5 = fArr3[i35] + f3;
                                    f6 = f46 + fArr3[i36];
                                    f7 = fArr3[i37];
                                }
                                f8 = f3 + f7;
                                f24 = f4;
                                f25 = f5;
                                f9 = f6;
                                f30 = f9;
                                f31 = f8;
                                fArr = fArr3;
                                c = c5;
                                i3 = i4;
                            } else {
                                i2 = i5;
                                float f47 = f31;
                                float f48 = f30;
                                int i38 = i2 + 5;
                                int i39 = i2 + 6;
                                fArr = fArr3;
                                c = c5;
                                i3 = i4;
                                drawArc(path, f48, f47, fArr3[i38] + f48, fArr3[i39] + f47, fArr3[i2 + 0], fArr3[i2 + 1], fArr3[i2 + 2], fArr3[i2 + 3] != 0.0f, fArr3[i2 + 4] != 0.0f);
                                f30 = f48 + fArr[i38];
                                f31 = f47 + fArr[i39];
                            }
                            i5 = i2 + i;
                            c4 = c;
                            c5 = c4;
                            fArr3 = fArr;
                            i4 = i3;
                            c2 = 'm';
                        } else {
                            i2 = i5;
                            fArr = fArr3;
                            c = c5;
                            i3 = i4;
                            int i40 = i2 + 2;
                            int i41 = i2 + 3;
                            int i42 = i2 + 4;
                            int i43 = i2 + 5;
                            path.cubicTo(fArr[i2 + 0], fArr[i2 + 1], fArr[i40], fArr[i41], fArr[i42], fArr[i43]);
                            float f49 = fArr[i42];
                            float f50 = fArr[i43];
                            f = fArr[i40];
                            f30 = f49;
                            f31 = f50;
                            f2 = fArr[i41];
                        }
                        f24 = f;
                        f25 = f2;
                        i5 = i2 + i;
                        c4 = c;
                        c5 = c4;
                        fArr3 = fArr;
                        i4 = i3;
                        c2 = 'm';
                    } else {
                        i2 = i5;
                        fArr = fArr3;
                        c = c5;
                        i3 = i4;
                        int i44 = i2 + 5;
                        int i45 = i2 + 6;
                        drawArc(path, f30, f31, fArr[i44], fArr[i45], fArr[i2 + 0], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3] != 0.0f, fArr[i2 + 4] != 0.0f);
                        f30 = fArr[i44];
                        f31 = fArr[i45];
                    }
                    f25 = f31;
                    f24 = f30;
                    i5 = i2 + i;
                    c4 = c;
                    c5 = c4;
                    fArr3 = fArr;
                    i4 = i3;
                    c2 = 'm';
                }
                int i46 = i4;
                fArr2[0] = f30;
                fArr2[1] = f31;
                fArr2[2] = f24;
                fArr2[3] = f25;
                fArr2[4] = f28;
                fArr2[5] = f29;
                i4 = i46 + 1;
                c4 = pathDataNodeArr[i46].mType;
                c2 = 'm';
                c3 = 0;
                pathDataNodeArr2 = pathDataNodeArr;
            }
        }
    }

    private PathParser() {
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            PathDataNode pathDataNode = pathDataNodeArr[i];
            char c = pathDataNode.mType;
            PathDataNode pathDataNode2 = pathDataNodeArr2[i];
            if (c != pathDataNode2.mType || pathDataNode.mParams.length != pathDataNode2.mParams.length) {
                return false;
            }
        }
        return true;
    }

    public static float[] copyOfRange(float[] fArr, int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i2 = i - 0;
        int min = Math.min(i2, length - 0);
        float[] fArr2 = new float[i2];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0090, code lost:
    
        if (r16 == false) goto L41;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009f A[Catch: NumberFormatException -> 0x00c2, LOOP:3: B:29:0x0074->B:39:0x009f, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00c2, blocks: (B:26:0x005a, B:28:0x006d, B:29:0x0074, B:31:0x007a, B:35:0x0086, B:39:0x009f, B:53:0x0092, B:43:0x00a4, B:44:0x00b1, B:49:0x00b6, B:60:0x00bb), top: B:25:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00a4 A[Catch: NumberFormatException -> 0x00c2, TryCatch #0 {NumberFormatException -> 0x00c2, blocks: (B:26:0x005a, B:28:0x006d, B:29:0x0074, B:31:0x007a, B:35:0x0086, B:39:0x009f, B:53:0x0092, B:43:0x00a4, B:44:0x00b1, B:49:0x00b6, B:60:0x00bb), top: B:25:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b6 A[Catch: NumberFormatException -> 0x00c2, TryCatch #0 {NumberFormatException -> 0x00c2, blocks: (B:26:0x005a, B:28:0x006d, B:29:0x0074, B:31:0x007a, B:35:0x0086, B:39:0x009f, B:53:0x0092, B:43:0x00a4, B:44:0x00b1, B:49:0x00b6, B:60:0x00bb), top: B:25:0x005a }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ee A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v9, types: [androidx.core.graphics.PathParser$PathDataNode, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v0, types: [androidx.core.graphics.PathParser$PathDataNode, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.graphics.PathParser.PathDataNode[] createNodesFromPathData(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.PathParser.createNodesFromPathData(java.lang.String):androidx.core.graphics.PathParser$PathDataNode[]");
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] createNodesFromPathData = createNodesFromPathData(str);
        if (createNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(createNodesFromPathData, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.core.graphics.PathParser$PathDataNode, java.lang.Object] */
    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            PathDataNode pathDataNode = pathDataNodeArr[i];
            ?? obj = new Object();
            obj.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            obj.mParams = copyOfRange(fArr, fArr.length);
            pathDataNodeArr2[i] = obj;
        }
        return pathDataNodeArr2;
    }
}
