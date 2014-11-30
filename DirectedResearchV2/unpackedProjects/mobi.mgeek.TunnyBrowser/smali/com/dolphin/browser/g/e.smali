.class Lcom/dolphin/browser/g/e;
.super Landroid/os/Handler;
.source "GpsTask.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/g/b;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/g/b;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dolphin/browser/g/e;->a:Lcom/dolphin/browser/g/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/g/b;Lcom/dolphin/browser/g/c;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/g/e;-><init>(Lcom/dolphin/browser/g/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 32
    iget-object v0, p0, Lcom/dolphin/browser/g/e;->a:Lcom/dolphin/browser/g/b;

    invoke-static {v0}, Lcom/dolphin/browser/g/b;->a(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/g/e;->a:Lcom/dolphin/browser/g/b;

    invoke-static {v0}, Lcom/dolphin/browser/g/b;->a(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/f;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/g/f;->a(Landroid/location/Location;)V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/g/e;->a:Lcom/dolphin/browser/g/b;

    invoke-static {v0}, Lcom/dolphin/browser/g/b;->a(Lcom/dolphin/browser/g/b;)Lcom/dolphin/browser/g/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/g/f;->a()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
