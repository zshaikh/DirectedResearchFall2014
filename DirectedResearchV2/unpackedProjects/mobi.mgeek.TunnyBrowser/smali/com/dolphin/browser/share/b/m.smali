.class public Lcom/dolphin/browser/share/b/m;
.super Lcom/dolphin/browser/share/b/k;
.source "SystemSharePlatform.java"


# instance fields
.field private a:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/k;-><init>()V

    .line 18
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 19
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 20
    iput-object v1, p0, Lcom/dolphin/browser/share/b/m;->a:Landroid/content/pm/ActivityInfo;

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 23
    const/4 v1, 0x6

    invoke-super {p0, v1, v2, v0}, Lcom/dolphin/browser/share/b/k;->a(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/dolphin/browser/share/b/m;->a:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/share/b/m;->a:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 37
    instance-of v0, p1, Lcom/dolphin/browser/share/ShareLoginActivity;

    if-eqz v0, :cond_0

    .line 38
    check-cast p1, Lcom/dolphin/browser/share/ShareLoginActivity;

    invoke-virtual {p1}, Lcom/dolphin/browser/share/ShareLoginActivity;->finish()V

    .line 40
    :cond_0
    return-void
.end method
