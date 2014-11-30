.class public abstract Lcom/dolphin/browser/javascript/h;
.super Ljava/lang/Object;
.source "JavaScriptRequestHandler.java"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dolphin/browser/javascript/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/dolphin/browser/javascript/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/javascript/h;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 8

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/javascript/h;->c:Ljava/util/ArrayList;

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 54
    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 56
    :try_start_0
    const-class v0, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;

    .line 57
    if-nez v0, :cond_0

    .line 54
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/dolphin/browser/javascript/e;

    invoke-direct {v7, v5, v0}, Lcom/dolphin/browser/javascript/e;-><init>(Ljava/lang/reflect/Method;Lcom/dolphin/browser/javascript/JavaScriptRequestAPI;)V

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    goto :goto_1

    .line 66
    :cond_1
    iput-object v2, p0, Lcom/dolphin/browser/javascript/h;->b:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 168
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 169
    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 171
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 178
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    if-eqz p2, :cond_2

    :try_start_0
    array-length v0, p2

    if-nez v0, :cond_3

    .line 184
    :cond_2
    const-string v0, ""

    .line 197
    :goto_1
    const-string v2, "javascript:%s(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v2, Lcom/dolphin/browser/javascript/h;->a:Ljava/lang/String;

    const-string v3, "invokeJavaScriptCallback: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 199
    invoke-interface {p0, v0}, Lcom/dolphin/browser/core/IWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    sget-object v2, Lcom/dolphin/browser/javascript/h;->a:Ljava/lang/String;

    const-string v3, "invokeJavaScriptCallback: %s failed."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 187
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    array-length v3, p2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_4

    aget-object v4, p2, v0

    .line 189
    invoke-static {v4}, Lcom/dolphin/browser/javascript/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 192
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 195
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method final a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/javascript/g;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/javascript/h;->b:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p2}, Lcom/dolphin/browser/javascript/g;->c()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/javascript/e;

    .line 84
    invoke-virtual {v0, p1, p0, p2}, Lcom/dolphin/browser/javascript/e;->a(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/javascript/h;Lcom/dolphin/browser/javascript/g;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/javascript/h;->c:Ljava/util/ArrayList;

    .line 98
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method final a(Lcom/dolphin/browser/javascript/g;)Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/javascript/h;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/dolphin/browser/javascript/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/javascript/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 140
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 142
    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "/android_asset/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "/android_raw/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    move v2, v0

    .line 162
    :cond_2
    :goto_1
    return v2

    :cond_3
    move v0, v1

    .line 145
    goto :goto_0

    .line 148
    :cond_4
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 150
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/javascript/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_7
    move v2, v1

    .line 162
    goto :goto_1
.end method

.method protected c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 113
    if-nez v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    new-instance v0, Lcom/dolphin/browser/javascript/i;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/javascript/i;-><init>(Lcom/dolphin/browser/javascript/h;Lcom/dolphin/browser/core/ITab;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/javascript/h;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
