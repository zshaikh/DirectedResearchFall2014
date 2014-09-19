.class public Lcom/fusepowered/m2/m2l/AdAlertReporter;
.super Ljava/lang/Object;
.source "AdAlertReporter.java"


# static fields
.field private static final BODY_SEPARATOR:Ljava/lang/String; = "\n=================\n"

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "M/d/yy hh:mm:ss a z"

.field private static final EMAIL_RECIPIENT:Ljava/lang/String; = "creative-review@mopub.com"

.field private static final EMAIL_SCHEME:Ljava/lang/String; = "mailto:"

.field private static final IMAGE_QUALITY:I = 0x19

.field private static final MARKUP_FILENAME:Ljava/lang/String; = "mp_adalert_markup.html"

.field private static final PARAMETERS_FILENAME:Ljava/lang/String; = "mp_adalert_parameters.txt"

.field private static final SCREEN_SHOT_FILENAME:Ljava/lang/String; = "mp_adalert_screenshot.png"


# instance fields
.field private final mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDateString:Ljava/lang/String;

.field private mEmailAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailIntent:Landroid/content/Intent;

.field private mParameters:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 6
    .parameter "context"
    .parameter "view"
    .parameter "adConfiguration"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mView:Landroid/view/View;

    .line 71
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "M/d/yy hh:mm:ss a z"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-static {}, Lcom/fusepowered/m2/m2l/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mDateString:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->initEmailIntent()V

    .line 80
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    .local v1, screenShot:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, screenShotString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->formParameters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mParameters:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->getResponseString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mResponse:Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->addEmailSubject()V

    .line 86
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mParameters:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mResponse:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-direct {p0, v3}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->addEmailBody([Ljava/lang/String;)V

    .line 87
    const-string v3, "mp_adalert_parameters.txt"

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mParameters:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->addTextAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "mp_adalert_markup.html"

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mResponse:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->addTextAttachment(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "mp_adalert_screenshot.png"

    invoke-direct {p0, v3, v1}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 90
    return-void
.end method

.method private varargs addEmailBody([Ljava/lang/String;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 181
    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    return-void

    .line 182
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    .line 184
    const-string v2, "\n=================\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private addEmailSubject()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New creative violation report - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mDateString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method private addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "fileName"
    .parameter "bitmap"

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 201
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x19

    invoke-virtual {p2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 203
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 204
    .local v2, fileUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 205
    .end local v2           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 206
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to write text attachment to file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 207
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 208
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 209
    throw v3
.end method

.method private addTextAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "body"

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, fileOutputStream:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 221
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 223
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 224
    .local v2, fileUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 225
    .end local v2           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 226
    .local v0, exception:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MoPub"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to write text attachment to file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 227
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 228
    invoke-static {v1}, Lcom/fusepowered/m2/m2l/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 229
    throw v3
.end method

.method private appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "parameters"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    return-void
.end method

.method private convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 129
    .local v2, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 131
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x19

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 134
    .local v1, bytes:[B
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/fusepowered/m2/m2l/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 139
    .end local v0           #byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    :cond_0
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private formParameters()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, parameters:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "creative_id"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "platform_version"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getPlatformVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "device_model"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "ad_unit_id"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "device_locale"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getDeviceLocale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "device_id"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getHashedUdid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "network_type"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "platform"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "timestamp"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->getFormattedTimeStamp(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "ad_type"

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "ad_size"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->appendKeyValue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFormattedTimeStamp(J)Ljava/lang/String;
    .locals 3
    .parameter "timeStamp"

    .prologue
    .line 233
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 234
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yy hh:mm:ss a z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdConfiguration;->getResponseString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private initEmailIntent()V
    .locals 6

    .prologue
    .line 101
    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    .local v0, emailScheme:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v2, "plain/text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "creative-review@mopub.com"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v5

    .line 124
    :goto_0
    return-object v4

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, rootView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    .line 114
    .local v3, wasDrawingCacheEnabled:Z
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 117
    .local v1, drawingCache:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    move-object v4, v5

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v4, v0

    .line 124
    goto :goto_0
.end method


# virtual methods
.method getEmailAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method getEmailIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getParameters()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mParameters:Ljava/lang/String;

    return-object v0
.end method

.method getResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v2, "Send Email..."

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, chooserIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
