.class public Lcom/facebook/orca/threadview/MessageItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "MessageItemView.java"


# instance fields
.field private a:Lcom/facebook/orca/cache/DataCache;

.field private b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private c:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private d:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private f:Lcom/facebook/orca/threads/ThreadSourceUtil;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private n:Lcom/facebook/orca/share/ShareView;

.field private o:Landroid/view/ViewStub;

.field private p:Landroid/view/ViewStub;

.field private q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

.field private r:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)I
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const v0, 0x7f02004c

    .line 168
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->f:Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Lcom/facebook/orca/threads/Message;)I

    move-result v0

    goto :goto_0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 108
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 110
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 111
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 114
    :goto_0
    if-eqz v0, :cond_5

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Lcom/facebook/orca/photos/tiles/UserTileView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserId(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadview/MessageItemView;->a(Lcom/facebook/orca/threads/Message;)I

    move-result v1

    .line 126
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-nez v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_3
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->d:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_8

    .line 137
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    .line 139
    iput-object v7, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareView;->setShare(Lcom/facebook/orca/share/Share;)V

    .line 150
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    .line 153
    iput-object v7, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 162
    :cond_3
    :goto_5
    return-void

    :cond_4
    move v0, v5

    .line 113
    goto/16 :goto_0

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move v2, v6

    .line 120
    goto/16 :goto_2

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 144
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->n:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v6}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    goto :goto_4

    .line 158
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->q:Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;

    invoke-virtual {v0, v6}, Lcom/facebook/orca/threadview/ThreadViewImageAttachmentView;->setVisibility(I)V

    goto :goto_5
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/MessageItemView;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 74
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->a:Lcom/facebook/orca/cache/DataCache;

    .line 75
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->b:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 76
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->c:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 77
    const-class v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->d:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 78
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->e:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 79
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->f:Lcom/facebook/orca/threads/ThreadSourceUtil;

    .line 81
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->a(I)V

    .line 82
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->g:Landroid/view/ViewGroup;

    .line 83
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->h:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    .line 85
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->j:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->k:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->l:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->m:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 89
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->o:Landroid/view/ViewStub;

    .line 90
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadview/MessageItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->p:Landroid/view/ViewStub;

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    new-instance v1, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;

    iget-object v2, p0, Lcom/facebook/orca/threadview/MessageItemView;->i:Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;

    invoke-direct {v1, v2}, Lcom/facebook/orca/common/ui/widgets/text/UrlSpanLinkHook;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/TextViewWithHooks;->a(Lcom/facebook/orca/common/ui/widgets/text/TextViewHook;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public setMessage(Lcom/facebook/orca/threads/Message;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/orca/threadview/MessageItemView;->r:Lcom/facebook/orca/threads/Message;

    .line 100
    invoke-direct {p0}, Lcom/facebook/orca/threadview/MessageItemView;->a()V

    .line 101
    return-void
.end method
