.class public abstract Lcom/dolphin/browser/share/b/c;
.super Lcom/dolphin/browser/share/b/k;
.source "BuiltinSharePlatform.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dolphin/browser/share/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/f;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;Lcom/dolphin/browser/share/h;)Lcom/dolphin/browser/share/n;
.end method

.method protected a(IIII)V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 24
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v1, p3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/b/c;->a:Ljava/lang/String;

    .line 27
    invoke-super {p0, p1, v2, v1}, Lcom/dolphin/browser/share/b/k;->a(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/share/ShareActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    const-string v1, "shared_url"

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "shared_title"

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "shared_type"

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "shared_source"

    invoke-virtual {p2}, Lcom/dolphin/browser/share/b/j;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    const-string v1, "shared_platform"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    invoke-static {p1, v0}, Lcom/dolphin/browser/share/m;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    check-cast p1, Landroid/app/Activity;

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 52
    return-void
.end method

.method public abstract a()Z
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/share/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
