.class Lcom/jesusla/ane/Closure$1;
.super Ljava/lang/Object;
.source "Closure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/ane/Closure;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/jesusla/ane/Closure;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jesusla/ane/Closure$1;->this$0:Lcom/jesusla/ane/Closure;

    iput-object p2, p0, Lcom/jesusla/ane/Closure$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    iget-object v1, p0, Lcom/jesusla/ane/Closure$1;->this$0:Lcom/jesusla/ane/Closure;

    # getter for: Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;
    invoke-static {v1}, Lcom/jesusla/ane/Closure;->access$100(Lcom/jesusla/ane/Closure;)Lcom/jesusla/ane/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jesusla/ane/Closure$1;->this$0:Lcom/jesusla/ane/Closure;

    # getter for: Lcom/jesusla/ane/Closure;->closure:I
    invoke-static {v2}, Lcom/jesusla/ane/Closure;->access$000(Lcom/jesusla/ane/Closure;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jesusla/ane/Context;->getObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v0

    .line 33
    .local v0, "object":Lcom/adobe/fre/FREObject;
    iget-object v1, p0, Lcom/jesusla/ane/Closure$1;->this$0:Lcom/jesusla/ane/Closure;

    # getter for: Lcom/jesusla/ane/Closure;->context:Lcom/jesusla/ane/Context;
    invoke-static {v1}, Lcom/jesusla/ane/Closure;->access$100(Lcom/jesusla/ane/Closure;)Lcom/jesusla/ane/Context;

    move-result-object v1

    const-string v2, "apply"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/jesusla/ane/Closure$1;->val$args:[Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-virtual {v1, v6, v0, v2, v3}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
