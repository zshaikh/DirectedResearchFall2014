.class public Ldolphin/webkit/bb;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# instance fields
.field private a:Ldolphin/webkit/be;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldolphin/webkit/be;I)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 216
    iput-object p2, p0, Ldolphin/webkit/bb;->a:Ldolphin/webkit/be;

    .line 217
    iput p3, p0, Ldolphin/webkit/bb;->b:I

    .line 218
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/bb;)Ldolphin/webkit/be;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Ldolphin/webkit/bb;->a:Ldolphin/webkit/be;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 223
    new-instance v0, Ldolphin/webkit/bc;

    invoke-direct {v0, p0}, Ldolphin/webkit/bc;-><init>(Ldolphin/webkit/bb;)V

    .line 229
    new-instance v1, Ldolphin/webkit/bd;

    invoke-virtual {p0}, Ldolphin/webkit/bb;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Ldolphin/webkit/bb;->b:I

    invoke-direct {v1, v2, v0, v3}, Ldolphin/webkit/bd;-><init>(Landroid/content/Context;Ldolphin/webkit/be;I)V

    invoke-virtual {p0, v1}, Ldolphin/webkit/bb;->setContentView(Landroid/view/View;)V

    .line 230
    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Ldolphin/webkit/bb;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method
