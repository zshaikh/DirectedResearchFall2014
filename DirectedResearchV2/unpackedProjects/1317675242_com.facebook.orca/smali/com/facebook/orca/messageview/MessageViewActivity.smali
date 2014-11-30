.class public Lcom/facebook/orca/messageview/MessageViewActivity;
.super Lcom/facebook/orca/activity/OrcaActivity;
.source "MessageViewActivity.java"


# instance fields
.field private b:Lorg/apache/http/client/CookieStore;

.field private c:Lcom/facebook/orca/cache/DataCache;

.field private d:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

.field private e:Lcom/facebook/orca/images/ImageCache;

.field private f:Lcom/facebook/orca/images/ImageScalingUtil;

.field private g:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

.field private h:Lcom/facebook/orca/share/ShareRenderingLogic;

.field private i:Lcom/facebook/orca/attachments/AttachmentDataFactory;

.field private j:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private k:Lcom/facebook/orca/threads/ThreadSourceUtil;

.field private l:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private q:Lcom/facebook/orca/maps/MapClickableImageView;

.field private r:Landroid/widget/TextView;

.field private s:Lcom/facebook/orca/share/ShareView;

.field private t:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

.field private u:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

.field private v:Ljava/lang/String;

.field private w:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/messageview/MessageViewActivity;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 200
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    invoke-static {p0, v2}, Lcom/facebook/orca/common/util/IntentUtil;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {p0, v2}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://m.facebook.com/profile.php?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    invoke-virtual {p0, v1}, Lcom/facebook/orca/messageview/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->setContentView(I)V

    .line 79
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 86
    const-class v0, Lorg/apache/http/client/CookieStore;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->b:Lorg/apache/http/client/CookieStore;

    .line 87
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->c:Lcom/facebook/orca/cache/DataCache;

    .line 88
    const-class v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->d:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    .line 89
    const-class v0, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageCache;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->e:Lcom/facebook/orca/images/ImageCache;

    .line 90
    const-class v0, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/ImageScalingUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->f:Lcom/facebook/orca/images/ImageScalingUtil;

    .line 91
    const-class v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->g:Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    .line 92
    const-class v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareRenderingLogic;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->h:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 93
    const-class v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->i:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    .line 94
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->j:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 95
    const-class v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSourceUtil;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->k:Lcom/facebook/orca/threads/ThreadSourceUtil;

    .line 97
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->l:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 98
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->n:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 102
    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/maps/MapClickableImageView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Lcom/facebook/orca/maps/MapClickableImageView;

    .line 103
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/share/ShareView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/share/ShareView;

    .line 105
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    .line 106
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/messageview/MessageViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    .line 108
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_1

    move v1, v6

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    const-string v2, "thread_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->c:Lcom/facebook/orca/cache/DataCache;

    iget-object v3, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/cache/DataCache;->d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummary;

    move-result-object v2

    .line 114
    const-string v3, "message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    iput-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    .line 115
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    if-nez v0, :cond_2

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->finish()V

    .line 194
    :goto_1
    return-void

    :cond_1
    move v1, v5

    .line 109
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/orca/messageview/MessageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    new-instance v3, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    invoke-direct {v3, p0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;-><init>(Landroid/content/Context;)V

    .line 122
    const v4, 0x106000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setTextColor(I)V

    .line 123
    if-eqz v1, :cond_5

    move v0, v6

    :goto_2
    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setMaxLines(I)V

    .line 124
    invoke-virtual {v3, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 125
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->l:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setCustomTitleView(Landroid/view/View;)V

    .line 130
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 131
    invoke-virtual {v2, v0}, Lcom/facebook/orca/threads/ThreadSummary;->a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_6

    .line 133
    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadParticipant;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUserId(Ljava/lang/String;)V

    .line 139
    :goto_3
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/facebook/orca/messageview/MessageViewActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/messageview/MessageViewActivity$1;-><init>(Lcom/facebook/orca/messageview/MessageViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->j:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadDateUtil;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->k:Lcom/facebook/orca/threads/ThreadSourceUtil;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/threads/ThreadSourceUtil;->a(Lcom/facebook/orca/threads/Message;)I

    move-result v0

    .line 155
    if-lez v0, :cond_7

    .line 156
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 160
    :goto_4
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->k:Lcom/facebook/orca/threads/ThreadSourceUtil;

    iget-object v2, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/threads/ThreadSourceUtil;->b(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Lcom/facebook/orca/maps/MapClickableImageView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/maps/MapClickableImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->q:Lcom/facebook/orca/maps/MapClickableImageView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/maps/MapClickableImageView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->d:Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 169
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 170
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 171
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->h:Lcom/facebook/orca/share/ShareRenderingLogic;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_8

    .line 175
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v1, v5}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/share/ShareView;->setShare(Lcom/facebook/orca/share/Share;)V

    .line 181
    :goto_5
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->i:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 183
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setVisibility(I)V

    .line 188
    :goto_6
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->i:Lcom/facebook/orca/attachments/AttachmentDataFactory;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/attachments/AttachmentDataFactory;->c(Lcom/facebook/orca/threads/Message;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 189
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->w:Lcom/facebook/orca/threads/Message;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setMessage(Lcom/facebook/orca/threads/Message;)V

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    invoke-virtual {v0, v5}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setVisibility(I)V

    goto/16 :goto_1

    .line 123
    :cond_5
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->p:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    goto/16 :goto_3

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->s:Lcom/facebook/orca/share/ShareView;

    invoke-virtual {v0, v7}, Lcom/facebook/orca/share/ShareView;->setVisibility(I)V

    goto :goto_5

    .line 185
    :cond_9
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->t:Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;

    invoke-virtual {v0, v7}, Lcom/facebook/orca/messageview/MessageViewImageAttachementsView;->setVisibility(I)V

    goto :goto_6

    .line 192
    :cond_a
    iget-object v0, p0, Lcom/facebook/orca/messageview/MessageViewActivity;->u:Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;

    invoke-virtual {v0, v7}, Lcom/facebook/orca/messageview/MessageViewOtherAttachmentsView;->setVisibility(I)V

    goto/16 :goto_1
.end method
