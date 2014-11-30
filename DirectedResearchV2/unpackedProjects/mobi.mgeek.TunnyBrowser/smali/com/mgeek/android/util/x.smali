.class public Lcom/mgeek/android/util/x;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field private static a:Lcom/mgeek/android/util/x;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mgeek/android/util/x;->e:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/util/x;->f:Landroid/content/SharedPreferences;

    .line 38
    iget-object v0, p0, Lcom/mgeek/android/util/x;->f:Landroid/content/SharedPreferences;

    const-string v1, "pref_update_manager_showinsettings"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgeek/android/util/x;->b:Z

    .line 39
    iget-object v0, p0, Lcom/mgeek/android/util/x;->f:Landroid/content/SharedPreferences;

    const-string v1, "pref_update_manager_shownotice"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgeek/android/util/x;->c:Z

    .line 40
    iget-object v0, p0, Lcom/mgeek/android/util/x;->f:Landroid/content/SharedPreferences;

    const-string v1, "pref_update_manager_new_features"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/util/x;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgeek/android/util/x;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mgeek/android/util/x;->a:Lcom/mgeek/android/util/x;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mgeek/android/util/x;

    invoke-direct {v0, p0}, Lcom/mgeek/android/util/x;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgeek/android/util/x;->a:Lcom/mgeek/android/util/x;

    .line 47
    :cond_0
    sget-object v0, Lcom/mgeek/android/util/x;->a:Lcom/mgeek/android/util/x;

    iput-object p0, v0, Lcom/mgeek/android/util/x;->e:Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/mgeek/android/util/x;->a:Lcom/mgeek/android/util/x;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/mgeek/android/util/x;->c:Z

    .line 93
    iget-object v0, p0, Lcom/mgeek/android/util/x;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    const-string v1, "pref_update_manager_shownotice"

    iget-boolean v2, p0, Lcom/mgeek/android/util/x;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 96
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mgeek/android/util/x;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mgeek/android/util/x;->c:Z

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/util/x;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e038e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/util/x;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 105
    return-void
.end method
