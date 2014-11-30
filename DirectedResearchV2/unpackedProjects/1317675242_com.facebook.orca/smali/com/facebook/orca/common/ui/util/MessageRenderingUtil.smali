.class public Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
.super Ljava/lang/Object;
.source "MessageRenderingUtil.java"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/facebook/orca/share/ShareRenderingLogic;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/orca/share/ShareRenderingLogic;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    .line 38
    iput-object p2, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0a00ae

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/share/Share;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    move-object v0, p1

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b:Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/share/ShareRenderingLogic;->a(Lcom/facebook/orca/share/Share;)Lcom/facebook/orca/share/ShareMedia;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 72
    invoke-virtual {v0}, Lcom/facebook/orca/share/Share;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_2
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    if-eqz v1, :cond_5

    .line 80
    const-string v0, "photo"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_3
    const-string v0, "video"

    invoke-virtual {v1}, Lcom/facebook/orca/share/ShareMedia;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, p1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    if-nez p2, :cond_0

    move-object v0, p1

    .line 115
    :goto_0
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 115
    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 132
    const-string v0, ""

    .line 134
    :goto_1
    return-object v0

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private c(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->d(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/facebook/orca/threads/Message;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a00a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a00a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 155
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 157
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->d()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a00a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :cond_4
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 165
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a:Landroid/content/res/Resources;

    const v2, 0x7f0a00a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ParticipantInfo;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :cond_5
    const-string v0, ""

    goto/16 :goto_0

    .line 172
    :cond_6
    const-string v0, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->m()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->b(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;->c(Lcom/facebook/orca/threads/Message;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
