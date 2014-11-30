.class Ldolphin/webkit/bc;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Ldolphin/webkit/be;


# instance fields
.field final synthetic a:Ldolphin/webkit/bb;


# direct methods
.method constructor <init>(Ldolphin/webkit/bb;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Ldolphin/webkit/bc;->a:Ldolphin/webkit/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ldolphin/webkit/bc;->a:Ldolphin/webkit/bb;

    invoke-static {v0}, Ldolphin/webkit/bb;->a(Ldolphin/webkit/bb;)Ldolphin/webkit/be;

    move-result-object v0

    invoke-interface {v0, p1}, Ldolphin/webkit/be;->a(I)V

    .line 226
    return-void
.end method
