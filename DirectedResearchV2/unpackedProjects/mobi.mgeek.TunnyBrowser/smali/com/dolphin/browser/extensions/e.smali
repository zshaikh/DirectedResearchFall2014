.class public Lcom/dolphin/browser/extensions/e;
.super Ljava/lang/Object;
.source "DefaultExtensionStore.java"


# static fields
.field private static a:Lcom/dolphin/browser/extensions/e;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "default_extensions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/extensions/e;->b:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method public static a()Lcom/dolphin/browser/extensions/e;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/extensions/e;->a:Lcom/dolphin/browser/extensions/e;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/dolphin/browser/extensions/e;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/extensions/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/extensions/e;->a:Lcom/dolphin/browser/extensions/e;

    .line 24
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/e;->a:Lcom/dolphin/browser/extensions/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/dolphin/browser/extensions/n;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/extensions/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {v1}, Lcom/dolphin/browser/extensions/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1}, Lcom/dolphin/browser/extensions/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/dolphin/browser/extensions/al;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/extensions/n;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 58
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/dolphin/browser/extensions/n;)V
    .locals 2

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/dolphin/browser/extensions/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/extensions/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/dolphin/browser/extensions/n;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
