.class public Lcom/dolphin/browser/ui/fake/r;
.super Ljava/lang/Object;
.source "TunnyFakeViewProductFactory.java"

# interfaces
.implements Lcom/dolphin/browser/ui/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;Lcom/dolphin/browser/addons/AlertDialogBuilder;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lcom/dolphin/browser/ui/y;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/dolphin/browser/ui/fake/a;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/fake/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Landroid/app/AlertDialog$Builder;Z)V
    .locals 1

    .prologue
    .line 36
    instance-of v0, p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lcom/dolphin/browser/ui/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Lcom/dolphin/browser/ui/AlertDialog$Builder;->b(Z)Lcom/dolphin/browser/ui/AlertDialog$Builder;

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Lcom/dolphin/browser/ui/z;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/dolphin/browser/ui/fake/q;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/fake/q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
