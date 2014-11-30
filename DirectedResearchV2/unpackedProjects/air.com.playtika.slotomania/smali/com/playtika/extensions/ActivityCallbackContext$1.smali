.class Lcom/playtika/extensions/ActivityCallbackContext$1;
.super Ljava/lang/Object;
.source "ActivityCallbackContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/ActivityCallbackContext;->getStartFunction()Lcom/adobe/fre/FREFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/ActivityCallbackContext;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/ActivityCallbackContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/ActivityCallbackContext$1;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/playtika/extensions/ActivityCallbackContext$1;->this$0:Lcom/playtika/extensions/ActivityCallbackContext;

    invoke-virtual {v0}, Lcom/playtika/extensions/ActivityCallbackContext;->start()V

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method
