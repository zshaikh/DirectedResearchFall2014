.class Ldolphin/webkit/az;
.super Ljava/lang/Object;
.source "ClientCertRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/webkit/ay;


# direct methods
.method constructor <init>(Ldolphin/webkit/ay;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Ldolphin/webkit/az;->a:Ldolphin/webkit/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Ldolphin/webkit/az;->a:Ldolphin/webkit/ay;

    invoke-static {v0}, Ldolphin/webkit/ay;->b(Ldolphin/webkit/ay;)Ldolphin/webkit/BrowserFrame;

    move-result-object v1

    iget-object v0, p0, Ldolphin/webkit/az;->a:Ldolphin/webkit/ay;

    invoke-static {v0}, Ldolphin/webkit/ay;->a(Ldolphin/webkit/ay;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-virtual {v1, v2, v3, v0}, Ldolphin/webkit/BrowserFrame;->nativeSslClientCert(II[[B)V

    .line 121
    return-void
.end method
