.class Lcom/pocketchange/android/webkit/OptimizedWebView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/webkit/OptimizedWebView;->setRedrawConfiguration(JLjava/lang/Boolean;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/pocketchange/android/webkit/OptimizedWebView;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/webkit/OptimizedWebView;Ljava/util/concurrent/atomic/AtomicReference;JZ)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    iput-object p2, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p3, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->b:J

    iput-boolean p5, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 174
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 175
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->d(Lcom/pocketchange/android/webkit/OptimizedWebView;)Z

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->d(Lcom/pocketchange/android/webkit/OptimizedWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_1

    const-wide/16 v0, 0x64

    .line 209
    :goto_1
    iget-object v2, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v2, v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->a(Lcom/pocketchange/android/webkit/OptimizedWebView;J)J

    .line 210
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    iget-boolean v1, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->c:Z

    invoke-static {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->a(Lcom/pocketchange/android/webkit/OptimizedWebView;Z)Z

    .line 211
    iget-object v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->c(Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    goto :goto_0

    .line 197
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v4, :cond_2

    const-wide/16 v0, 0xfa

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 207
    :cond_3
    iget-wide v0, p0, Lcom/pocketchange/android/webkit/OptimizedWebView$5;->b:J

    goto :goto_1
.end method
