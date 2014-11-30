.class public Lcom/playhaven/sampleapp/examples/ExampleView;
.super Landroid/app/ListActivity;
.source "ExampleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;
    }
.end annotation


# instance fields
.field private adapter:Lcom/playhaven/sampleapp/DetailAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/playhaven/sampleapp/DetailAdapter",
            "<",
            "Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public bShowPlacementEditText:Z

.field private messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public topbarLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->bShowPlacementEditText:Z

    .line 24
    return-void
.end method

.method private createSendButton()Landroid/widget/Button;
    .locals 5

    .prologue
    .line 94
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "sendBtn":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const v4, 0x3e99999a

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v1, Lcom/playhaven/sampleapp/examples/ExampleView$1;

    invoke-direct {v1, p0}, Lcom/playhaven/sampleapp/examples/ExampleView$1;-><init>(Lcom/playhaven/sampleapp/examples/ExampleView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 106
    const-string v1, "startBtn"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    return-object v0
.end method

.method private setupTopbar()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->topbarLayout:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->topbarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->topbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addTopbarItems(Landroid/widget/LinearLayout;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected addMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->messages:Ljava/util/ArrayList;

    new-instance v1, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;-><init>(Lcom/playhaven/sampleapp/examples/ExampleView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->adapter:Lcom/playhaven/sampleapp/DetailAdapter;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/DetailAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method protected addMessage(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "testingView"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->messages:Ljava/util/ArrayList;

    new-instance v1, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/playhaven/sampleapp/examples/ExampleView$MessageObject;-><init>(Lcom/playhaven/sampleapp/examples/ExampleView;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method protected addTopbarItems(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "topbar"    # Landroid/widget/LinearLayout;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->createSendButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->messages:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->setupTopbar()V

    .line 75
    invoke-virtual {p0}, Lcom/playhaven/sampleapp/examples/ExampleView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->topbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 77
    new-instance v0, Lcom/playhaven/sampleapp/DetailAdapter;

    const/high16 v1, 0x7f030000

    iget-object v2, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->messages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/playhaven/sampleapp/DetailAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->adapter:Lcom/playhaven/sampleapp/DetailAdapter;

    .line 78
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->adapter:Lcom/playhaven/sampleapp/DetailAdapter;

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 137
    invoke-static {p0}, Lcom/playhaven/src/common/PHSession;->unregister(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 131
    invoke-static {p0}, Lcom/playhaven/src/common/PHSession;->register(Landroid/app/Activity;)V

    .line 132
    return-void
.end method

.method protected startRequest()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/playhaven/sampleapp/examples/ExampleView;->adapter:Lcom/playhaven/sampleapp/DetailAdapter;

    invoke-virtual {v0}, Lcom/playhaven/sampleapp/DetailAdapter;->clear()V

    .line 125
    const-string v0, "Started Request"

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/examples/ExampleView;->addMessage(Ljava/lang/String;)V

    .line 126
    return-void
.end method
