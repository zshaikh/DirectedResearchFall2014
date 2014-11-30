.class public Ldolphin/webkit/a;
.super Ljava/lang/Object;
.source "ActionMode.java"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Z

.field private c:Ldolphin/webkit/b;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ldolphin/webkit/a;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/a;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Ldolphin/webkit/a;->b:Z

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ldolphin/webkit/a;->c:Ldolphin/webkit/b;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Ldolphin/webkit/a;->c:Ldolphin/webkit/b;

    invoke-interface {v0, p0}, Ldolphin/webkit/b;->b(Ldolphin/webkit/a;)V

    .line 47
    :cond_0
    return-void
.end method

.method static synthetic c(Ldolphin/webkit/a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ldolphin/webkit/a;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 55
    iget-object v0, p0, Ldolphin/webkit/a;->c:Ldolphin/webkit/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/a;->c:Ldolphin/webkit/b;

    invoke-interface {v0, p0}, Ldolphin/webkit/b;->a(Ldolphin/webkit/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Ldolphin/webkit/a;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ldolphin/webkit/c;

    iget-object v1, p0, Ldolphin/webkit/a;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ldolphin/webkit/c;-><init>(Ldolphin/webkit/a;Landroid/content/Context;)V

    iput-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 66
    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 70
    :cond_2
    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    .line 41
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Ldolphin/webkit/a;->e:Landroid/content/Context;

    .line 100
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Ldolphin/webkit/a;->d:Landroid/view/View;

    .line 96
    return-void
.end method

.method public a(Ldolphin/webkit/b;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Ldolphin/webkit/a;->c:Ldolphin/webkit/b;

    .line 51
    invoke-direct {p0}, Ldolphin/webkit/a;->d()V

    .line 52
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Ldolphin/webkit/a;->b:Z

    .line 79
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/a;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
