.class Lcom/jesusla/ane/Context$1;
.super Ljava/lang/Object;
.source "Context.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jesusla/ane/Context;->asyncFlashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jesusla/ane/Context;

.field final synthetic val$javaArgs:[Ljava/lang/Object;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$returnType:Ljava/lang/Class;

.field final synthetic val$target:Lcom/adobe/fre/FREObject;


# direct methods
.method constructor <init>(Lcom/jesusla/ane/Context;Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/jesusla/ane/Context$1;->this$0:Lcom/jesusla/ane/Context;

    iput-object p2, p0, Lcom/jesusla/ane/Context$1;->val$returnType:Ljava/lang/Class;

    iput-object p3, p0, Lcom/jesusla/ane/Context$1;->val$target:Lcom/adobe/fre/FREObject;

    iput-object p4, p0, Lcom/jesusla/ane/Context$1;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/jesusla/ane/Context$1;->val$javaArgs:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jesusla/ane/Context$1;->this$0:Lcom/jesusla/ane/Context;

    iget-object v1, p0, Lcom/jesusla/ane/Context$1;->val$returnType:Ljava/lang/Class;

    iget-object v2, p0, Lcom/jesusla/ane/Context$1;->val$target:Lcom/adobe/fre/FREObject;

    iget-object v3, p0, Lcom/jesusla/ane/Context$1;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/jesusla/ane/Context$1;->val$javaArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jesusla/ane/Context;->flashCall(Ljava/lang/Class;Lcom/adobe/fre/FREObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
