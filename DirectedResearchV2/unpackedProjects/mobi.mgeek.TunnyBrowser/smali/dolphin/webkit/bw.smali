.class Ldolphin/webkit/bw;
.super Ldolphin/webkit/gw;
.source "FileLoader.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ldolphin/webkit/LoadListener;IZ)V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0, p2}, Ldolphin/webkit/gw;-><init>(Ldolphin/webkit/LoadListener;)V

    .line 64
    iput p3, p0, Ldolphin/webkit/bw;->b:I

    .line 65
    iput-boolean p4, p0, Ldolphin/webkit/bw;->g:Z

    .line 68
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 69
    iget v1, p0, Ldolphin/webkit/bw;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 70
    if-lez v0, :cond_0

    const-string v1, "file:///android_asset/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    .line 85
    :goto_1
    return-void

    .line 70
    :cond_0
    const-string v0, "file:///android_asset/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    iget v1, p0, Ldolphin/webkit/bw;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 75
    if-lez v0, :cond_2

    const-string v1, "file:///android_res/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "file:///android_res/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 80
    :cond_3
    if-lez v0, :cond_4

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 89
    sget v0, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v1, :cond_0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(Ldolphin/net/http/m;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method protected a()Z
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/16 v9, -0xd

    const/4 v1, 0x0

    .line 99
    :try_start_0
    iget v0, p0, Ldolphin/webkit/bw;->b:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    if-ne v0, v2, :cond_1

    .line 101
    :try_start_1
    iget-object v0, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/bw;->e:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 172
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const-string v6, "OK"

    invoke-virtual {v0, v3, v4, v5, v6}, Ldolphin/webkit/LoadListener;->a(IIILjava/lang/String;)V

    move v0, v2

    .line 182
    :goto_1
    return v0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    iget-object v0, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v3, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/bw;->e:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    iget-object v2, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    const/16 v3, -0xe

    invoke-direct {p0, v0}, Ldolphin/webkit/bw;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 176
    goto :goto_1

    .line 106
    :cond_1
    :try_start_3
    iget v0, p0, Ldolphin/webkit/bw;->b:I

    if-ne v0, v3, :cond_7

    .line 110
    iget-object v0, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 111
    :cond_2
    const-string v0, "webkit"

    const-string v2, "Need a path to resolve the res file"

    invoke-static {v0, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    const/16 v2, -0xd

    sget v3, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 114
    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 118
    iget-object v3, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 119
    if-eq v0, v5, :cond_4

    if-ne v3, v5, :cond_5

    .line 120
    :cond_4
    const-string v0, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect res path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    const/16 v2, -0xd

    sget v3, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 123
    goto/16 :goto_1

    .line 125
    :cond_5
    iget-object v4, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 126
    iget-object v5, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v3

    .line 127
    const/4 v0, 0x0

    .line 129
    :try_start_4
    iget-object v5, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".R$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 133
    invoke-virtual {v5, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 134
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 135
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 136
    iget-object v7, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 137
    iget v5, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_6

    .line 138
    iget-object v5, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    iget v7, v6, Landroid/util/TypedValue;->assetCookie:I

    iget-object v6, v6, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Ldolphin/webkit/bw;->e:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 157
    :goto_2
    if-eqz v0, :cond_0

    .line 158
    :try_start_5
    iget-object v0, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    const/16 v2, -0xd

    sget v3, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move v0, v1

    .line 160
    goto/16 :goto_1

    .line 142
    :cond_6
    :try_start_6
    const-string v0, "Only support TYPE_STRING for the res files"
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_2

    .line 144
    :catch_2
    move-exception v0

    .line 145
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find class:  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".R$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 147
    :catch_3
    move-exception v0

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught SecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 149
    :catch_4
    move-exception v0

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find field:  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Ldolphin/webkit/bw;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".R$"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 152
    :catch_5
    move-exception v0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught IllegalArgumentException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 154
    :catch_6
    move-exception v0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught IllegalAccessException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 163
    :cond_7
    iget-boolean v0, p0, Ldolphin/webkit/bw;->g:Z

    if-nez v0, :cond_8

    .line 164
    iget-object v0, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    const/16 v2, -0xd

    sget v3, Ldolphin/webkit/R$string;->httpErrorFileNotFound:I

    invoke-static {v3}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 166
    goto/16 :goto_1

    .line 169
    :cond_8
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldolphin/webkit/bw;->e:Ljava/io/InputStream;

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Ldolphin/webkit/bw;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iput-wide v3, p0, Ldolphin/webkit/bw;->f:J
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 178
    :catch_7
    move-exception v0

    .line 179
    iget-object v2, p0, Ldolphin/webkit/bw;->d:Ldolphin/webkit/LoadListener;

    invoke-direct {p0, v0}, Ldolphin/webkit/bw;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Ldolphin/webkit/LoadListener;->a(ILjava/lang/String;)V

    move v0, v1

    .line 180
    goto/16 :goto_1
.end method
