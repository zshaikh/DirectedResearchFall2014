.class Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$2;
.super Ljava/lang/Object;
.source "ScreenListenerContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->checkVisibility()Lcom/adobe/fre/FREFunction;
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
    iput-object p1, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$2;->this$0:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext$2;->this$0:Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;

    # invokes: Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->mCheckVisibility()V
    invoke-static {v0}, Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;->access$0(Lcom/playtika/extensions/tools/screenlistener/ScreenListenerContext;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
