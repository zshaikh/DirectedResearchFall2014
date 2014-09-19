.class Lcom/fusepowered/m1/android/HandShake$2;
.super Ljava/lang/Object;
.source "HandShake.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/HandShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/HandShake;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/HandShake;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/fusepowered/m1/android/HandShake$2;->this$0:Lcom/fusepowered/m1/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/fusepowered/m1/android/HandShake$2;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/fusepowered/m1/android/HandShake;->access$000(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 398
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/fusepowered/m1/android/HandShake$2;->this$0:Lcom/fusepowered/m1/android/HandShake;

    #getter for: Lcom/fusepowered/m1/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/fusepowered/m1/android/HandShake;->access$100(Lcom/fusepowered/m1/android/HandShake;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #context:Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 400
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    if-eqz v0, :cond_1

    .line 401
    invoke-static {v0}, Lcom/fusepowered/m1/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/fusepowered/m1/android/HandShake;

    .line 402
    :cond_1
    return-void
.end method
