.class Lcom/pocketchange/android/util/AsyncTask$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/util/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pocketchange/android/util/AsyncTask$1;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pocketchange/android/util/AsyncTask$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/pocketchange/android/util/AsyncTask$a;
    check-cast p0, Lcom/pocketchange/android/util/AsyncTask;

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-static {p0}, Lcom/pocketchange/android/util/AsyncTask;->a(Lcom/pocketchange/android/util/AsyncTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/util/AsyncTask;->onComplete(Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
