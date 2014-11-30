.class public Ldolphin/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation


# static fields
.field private static final a:Ldolphin/webkit/MimeTypeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ldolphin/webkit/MimeTypeMap;

    invoke-direct {v0}, Ldolphin/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Ldolphin/webkit/MimeTypeMap;->a:Ldolphin/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Ldolphin/webkit/MimeTypeMap;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Ldolphin/webkit/MimeTypeMap;->a:Ldolphin/webkit/MimeTypeMap;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v0, ""

    goto :goto_0
.end method

.method private static mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Ldolphin/webkit/MimeTypeMap;->a()Ldolphin/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldolphin/webkit/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "text/plain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 139
    if-eqz p3, :cond_1

    .line 140
    invoke-static {p3}, Ldolphin/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_1
    if-eqz v0, :cond_2

    move-object p2, v0

    .line 145
    :cond_2
    invoke-static {p2}, Ldolphin/webkit/MimeTypeMap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0}, Ldolphin/webkit/MimeTypeMap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_3

    move-object p1, v0

    .line 161
    :cond_3
    :goto_0
    return-object p1

    .line 150
    :cond_4
    const-string v0, "text/vnd.wap.wml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    const-string p1, "text/plain"

    goto :goto_0

    .line 157
    :cond_5
    const-string v0, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const-string p1, "application/xhtml+xml"

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v0, "application/octet-stream"

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v0, ""

    goto :goto_0
.end method
