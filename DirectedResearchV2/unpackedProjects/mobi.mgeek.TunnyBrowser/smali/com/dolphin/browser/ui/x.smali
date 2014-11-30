.class public Lcom/dolphin/browser/ui/x;
.super Ljava/lang/Object;
.source "FakeViewProductManager.java"


# static fields
.field public static final a:Lcom/dolphin/browser/ui/x;


# instance fields
.field private b:Lcom/dolphin/browser/ui/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/dolphin/browser/ui/x;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/x;-><init>()V

    sput-object v0, Lcom/dolphin/browser/ui/x;->a:Lcom/dolphin/browser/ui/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static a()Lcom/dolphin/browser/ui/x;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/ui/x;->a:Lcom/dolphin/browser/ui/x;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/w;->c(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;-><init>(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/ui/w;->a(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/app/AlertDialog$Builder;Z)V
    .locals 1

    .prologue
    .line 52
    instance-of v0, p1, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 53
    check-cast p1, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->b(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/ui/w;->a(Landroid/app/AlertDialog$Builder;Z)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/ui/w;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    .line 29
    return-void
.end method

.method public b(Landroid/content/Context;)Lcom/dolphin/browser/ui/z;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/dolphin/browser/ui/v;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/v;-><init>(Landroid/content/Context;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/w;->b(Landroid/content/Context;)Lcom/dolphin/browser/ui/z;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)Lcom/dolphin/browser/ui/y;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/dolphin/browser/ui/f;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/f;-><init>(Landroid/content/Context;)V

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/x;->b:Lcom/dolphin/browser/ui/w;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/ui/w;->a(Landroid/content/Context;)Lcom/dolphin/browser/ui/y;

    move-result-object v0

    goto :goto_0
.end method
