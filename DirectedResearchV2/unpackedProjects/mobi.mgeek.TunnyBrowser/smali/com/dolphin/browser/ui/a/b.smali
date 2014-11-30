.class public Lcom/dolphin/browser/ui/a/b;
.super Ljava/lang/Object;
.source "LayoutModePreference.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dolphin/browser/ui/a/b;->a:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/ui/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "layout_mode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/a/b;->a(I)V

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "layout_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "device_size"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 46
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "layout_mode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 35
    return-void
.end method

.method public b()F
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dolphin/browser/ui/a/b;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "device_size"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
