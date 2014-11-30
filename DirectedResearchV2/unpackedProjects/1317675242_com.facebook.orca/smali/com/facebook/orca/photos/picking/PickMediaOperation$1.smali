.class Lcom/facebook/orca/photos/picking/PickMediaOperation$1;
.super Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;
.source "PickMediaOperation.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/photos/picking/PickMediaOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;)V
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/facebook/orca/photos/picking/PickMediaOperation$3;->a:[I

    invoke-virtual {p1}, Lcom/facebook/orca/photos/picking/MediaChoiceDialog$ButtonOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->a(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->b(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->c(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->d(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->e(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 137
    :pswitch_5
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->f(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$1;->a:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-static {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->g(Lcom/facebook/orca/photos/picking/PickMediaOperation;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
