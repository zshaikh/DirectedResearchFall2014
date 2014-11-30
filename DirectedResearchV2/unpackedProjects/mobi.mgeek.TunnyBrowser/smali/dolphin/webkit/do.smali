.class Ldolphin/webkit/do;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreenEx.java"

# interfaces
.implements Lcom/dolphin/player/bn;


# instance fields
.field final synthetic a:Ldolphin/webkit/dk;


# direct methods
.method constructor <init>(Ldolphin/webkit/dk;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Ldolphin/webkit/do;->a:Ldolphin/webkit/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Ldolphin/webkit/do;->a:Ldolphin/webkit/dk;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/dk;I)I

    .line 190
    iget-object v0, p0, Ldolphin/webkit/do;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Ldolphin/webkit/do;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    iget-object v1, p0, Ldolphin/webkit/do;->a:Ldolphin/webkit/dk;

    invoke-static {v1}, Ldolphin/webkit/dk;->b(Ldolphin/webkit/dk;)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ldolphin/webkit/HTML5VideoViewProxy;->a(III)V

    .line 192
    iget-object v0, p0, Ldolphin/webkit/do;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->f()V

    .line 194
    :cond_0
    return-void
.end method
