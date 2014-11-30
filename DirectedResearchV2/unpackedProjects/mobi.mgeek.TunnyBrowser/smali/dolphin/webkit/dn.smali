.class Ldolphin/webkit/dn;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreenEx.java"

# interfaces
.implements Lcom/dolphin/player/bm;


# instance fields
.field final synthetic a:Ldolphin/webkit/dk;


# direct methods
.method constructor <init>(Ldolphin/webkit/dk;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->d()V

    .line 183
    :cond_0
    return-void
.end method

.method public a(DID)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    double-to-int v1, p1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ldolphin/webkit/dk;->a(Ldolphin/webkit/dk;I)I

    .line 173
    iget-object v0, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    double-to-int v1, p4

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v0, v1}, Ldolphin/webkit/dk;->b(Ldolphin/webkit/dk;I)I

    .line 174
    iget-object v0, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Ldolphin/webkit/dn;->a:Ldolphin/webkit/dk;

    iget-object v0, v0, Ldolphin/webkit/dk;->c:Ldolphin/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->p()V

    .line 177
    :cond_0
    return-void
.end method
