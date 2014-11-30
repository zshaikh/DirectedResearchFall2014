.class Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;
.super Ljava/lang/Object;
.source "UnzipFunction.java"

# interfaces
.implements Lcom/gamesys/android/tools/ane/file/IAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/tools/ane/file/UnzipFunction;->callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/tools/ane/file/UnzipFunction;

.field private final synthetic val$ctx:Lcom/gamesys/android/tools/ane/ToolsContext;


# direct methods
.method constructor <init>(Lcom/gamesys/android/tools/ane/file/UnzipFunction;Lcom/gamesys/android/tools/ane/ToolsContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;->this$0:Lcom/gamesys/android/tools/ane/file/UnzipFunction;

    iput-object p2, p0, Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;->val$ctx:Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Object;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Object;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;->val$ctx:Lcom/gamesys/android/tools/ane/ToolsContext;

    const-string v1, "com.gamesys.android.ane.tools.CODE_UNZIP_ERROR"

    const-string v2, "com.gamesys.android.ane.tools.LEVEL_UNZIP_ERROR"

    invoke-virtual {v0, v1, v2}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onSucess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/gamesys/android/tools/ane/file/UnzipFunction$1;->val$ctx:Lcom/gamesys/android/tools/ane/ToolsContext;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    const-string v1, "com.gamesys.android.ane.tools.LEVEL_UNZIP_SUCCESS"

    invoke-virtual {v0, p1, v1}, Lcom/gamesys/android/tools/ane/ToolsContext;->dispatchStatusEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method
