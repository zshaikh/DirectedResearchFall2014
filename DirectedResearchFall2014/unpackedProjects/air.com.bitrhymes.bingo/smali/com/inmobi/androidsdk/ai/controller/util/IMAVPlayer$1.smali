.class Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;
.super Ljava/lang/Object;
.source "IMAVPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    return-object v0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;->a:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;

    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1$1;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer$1;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method
