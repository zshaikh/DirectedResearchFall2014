.class Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$1;
.super Ljava/lang/Object;
.source "ScreenListenerContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->startService()Lcom/adobe/fre/FREFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$1;->this$0:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$1;->this$0:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    invoke-virtual {v0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$1;->this$0:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    invoke-virtual {v2}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
