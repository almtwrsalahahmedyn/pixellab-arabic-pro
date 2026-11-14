.class public Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter;
.super Ljava/lang/Object;
.source "PsdProjectImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;,
        Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$ImportCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter;->convertPsdToPixelLabPreset(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static convertPsdToPixelLabPreset(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 88
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 89
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 90
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    const/16 v5, 0x38

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    const/16 v5, 0x42

    if-ne v3, v5, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    const/16 v5, 0x50

    if-ne v3, v5, :cond_0

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    const/16 v3, 0x53

    if-eq v2, v3, :cond_1

    .line 91
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 92
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "\u0627\u0644\u0645\u0644\u0641 \u0644\u064a\u0633 \u0628\u0635\u064a\u063a\u0629 Photoshop PSD \u0635\u0627\u0644\u062d\u0629"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 96
    const/4 v2, 0x6

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 97
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 98
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 99
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 100
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 101
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 103
    if-lez v6, :cond_2

    if-lez v5, :cond_2

    const/16 v2, 0x4000

    if-gt v6, v2, :cond_2

    const/16 v2, 0x4000

    if-le v5, v2, :cond_3

    .line 104
    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 105
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0623\u0628\u0639\u0627\u062f PSD \u063a\u064a\u0631 \u0645\u062f\u0639\u0648\u0645\u0629: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    .line 110
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_4

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 113
    :cond_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v2, v8

    .line 114
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_5

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 117
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 118
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_6

    .line 119
    const/4 v3, 0x0

    const/16 v7, 0x2e

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_6
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "pixelLab/presets"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 123
    invoke-static {v3, v2}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/commonFuncs;->returnAvailableFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 125
    new-instance v8, Ljava/io/File;

    const-string v2, "res"

    invoke-direct {v8, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 128
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v2, v10

    .line 133
    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_a

    .line 134
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 135
    if-lez v2, :cond_a

    .line 136
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 137
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 139
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v10, :cond_a

    .line 140
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 141
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 142
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 143
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 144
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v15

    .line 146
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v15, :cond_7

    .line 147
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_7
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 151
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 152
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 153
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 154
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 155
    const/4 v15, 0x3

    invoke-virtual {v4, v15}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 157
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 158
    if-lez v15, :cond_8

    .line 159
    invoke-virtual {v4, v15}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 162
    :cond_8
    sub-int/2addr v14, v12

    .line 163
    sub-int/2addr v13, v11

    .line 164
    if-lez v14, :cond_9

    if-lez v13, :cond_9

    .line 165
    new-instance v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;)V

    .line 166
    iput v11, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->top:I

    .line 167
    iput v12, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->left:I

    .line 168
    iput v14, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->width:I

    .line 169
    iput v13, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->height:I

    .line 170
    iput v2, v15, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->opacity:I

    .line 171
    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 178
    :cond_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 182
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 183
    const-string v2, "bgWidth"

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v2, "bgHeight"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v2, "bgActualWidth"

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v2, "bgActualHeight"

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v2, "bgColor"

    const/high16 v3, -0x1000000

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v2, "bgType"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v2, "currTab"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v2, "bgPhotoForcedDim"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 191
    const-string v2, "bgRotation"

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    const-string v2, "objectsSelectedReference"

    const-string v3, "0"

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 195
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 196
    const-string v2, "objectsSkipEmpty"

    const/4 v3, 0x1

    invoke-virtual {v11, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 201
    new-instance v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;-><init>(Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;)V

    .line 202
    const/4 v3, 0x0

    iput v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->top:I

    .line 203
    const/4 v3, 0x0

    iput v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->left:I

    .line 204
    iput v6, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->width:I

    .line 205
    iput v5, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->height:I

    .line 206
    const/16 v3, 0xff

    iput v3, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->opacity:I

    .line 207
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_b
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    .line 211
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "shape"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 213
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "layer_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 216
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    iget v15, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->width:I

    const/16 v16, 0x800

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget v0, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->height:I

    move/from16 v16, v0

    const/16 v17, 0x800

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v15 .. v17}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 220
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 221
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v14, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 222
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 223
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 226
    const-string v15, "shapeReference"

    const/16 v16, 0x5

    invoke-static/range {v16 .. v16}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter;->randRef(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v15, "shapeX"

    iget v0, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    const-string v15, "shapeY"

    iget v0, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v15, "shapeWidth"

    iget v0, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v15, "shapeHeight"

    iget v0, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v15, "shapeOldContainerWidth"

    invoke-virtual {v14, v15, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v15, "shapeOldContainerHeight"

    invoke-virtual {v14, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v15, "shapeRotation"

    const-string v16, "0"

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v15, "shapeOpacity"

    iget v2, v2, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$LayerInfo;->opacity:I

    int-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide v18, 0x406fe00000000000L    # 255.0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v2, v0

    invoke-virtual {v14, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v2, "shapeImageShapeType"

    const/4 v15, 0x1

    invoke-virtual {v14, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string v2, "shapeImageSrcV2"

    const/4 v15, 0x1

    invoke-virtual {v14, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 238
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 239
    const-string v15, "imgSrcPath"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/res/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v13, "imgSrcSourceType"

    const-string v15, "local_file"

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v13, "imgSrcAssetFolder"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 242
    const-string v13, "shapeImageSrc"

    invoke-virtual {v14, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 245
    const-string v13, "cropInfCirc"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    const-string v13, "cropInfRot"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    const-string v13, "cropInfoPorLeft"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    const-string v13, "cropInfoPorTop"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v13, "cropInfoPorRight"

    const v15, 0x186a0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    const-string v13, "cropInfoPorBottom"

    const v15, 0x186a0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    const-string v13, "mHbGHc"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 252
    const-string v13, "n7gV4v"

    const/4 v15, 0x0

    invoke-virtual {v2, v13, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 253
    const-string v13, "shapeImageCropInfo"

    invoke-virtual {v14, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v2, "objectHidden"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    const-string v2, "objectLocked"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 257
    const-string v2, "shapeStrokeEnabled"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    const-string v2, "shapeShadowEnabled"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    const-string v2, "shapeInnerEnabled"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    const-string v2, "shapeEmbossEnabled"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 261
    const-string v2, "shapeThreeDEnabled"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 262
    const-string v2, "shapeColorOverlayEnabled"

    const/4 v13, 0x0

    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 264
    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 267
    :cond_c
    const-string v2, "objectsIds"

    invoke-virtual {v4, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v2, "objectsBundle"

    invoke-virtual {v4, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    new-instance v2, Ljava/io/File;

    const-string v3, "data.plab"

    invoke-direct {v2, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 274
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 276
    return-object v7
.end method

.method public static importPsdFile(Landroid/content/Context;Ljava/io/File;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 42
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "\u062c\u0627\u0631\u064a \u0627\u0633\u062a\u064a\u0631\u0627\u062f \u0645\u0634\u0631\u0648\u0639 \u0627\u0644\u0641\u0648\u062a\u0648\u0634\u0648\u0628"

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    const-string v0, "\u062c\u0627\u0631\u064a \u0641\u0643 \u0648\u062a\u062c\u0647\u064a\u0632 \u0637\u0628\u0642\u0627\u062a PSD \u0625\u0644\u0649 \u0628\u064a\u0643\u0633\u0644\u0627\u0628..."

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 46
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 48
    new-instance v0, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/app/ProgressDialog;Lcom/tawfiq/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;Z)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 81
    invoke-virtual {v0, v1}, Lcom/tawfiq/imaginstudio/imagetools/pixellab/PsdProjectImporter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method private static randRef(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 35
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
