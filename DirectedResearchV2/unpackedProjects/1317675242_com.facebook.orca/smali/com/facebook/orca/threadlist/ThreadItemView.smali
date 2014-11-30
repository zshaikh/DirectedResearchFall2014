.class public Lcom/facebook/orca/threadlist/ThreadItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadItemView.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private d:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private e:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private f:Lcom/facebook/orca/photos/tiles/ThreadTileView2;

.field private g:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/facebook/orca/threads/ThreadSummary;

.field private k:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "\\n+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadItemView;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 110
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 111
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 115
    :cond_2
    sget-object v2, Lcom/facebook/orca/threadlist/ThreadItemView;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    new-instance v3, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 126
    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v5}, Lcom/facebook/orca/cache/DataCache;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    const v1, 0x7f020039

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 130
    const/16 v1, 0x21

    invoke-virtual {v3, v2, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 131
    const-string v1, " "

    invoke-virtual {v3, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 132
    invoke-virtual {v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 133
    const-string v1, " "

    invoke-virtual {v3, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 134
    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 151
    :goto_1
    invoke-virtual {v3}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_4
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v2, p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 136
    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_1

    .line 139
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 140
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_1

    .line 148
    :cond_7
    invoke-virtual {v3, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->e:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 90
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->f:Lcom/facebook/orca/photos/tiles/ThreadTileView2;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/photos/tiles/ThreadTileView2;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->g:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    :goto_2
    return-void

    :cond_0
    move v0, v4

    .line 95
    goto :goto_0

    :cond_1
    move v0, v5

    .line 96
    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 69
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    .line 70
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 71
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 73
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(I)V

    .line 75
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->e:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 76
    const v0, 0x7f0800de

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/ThreadTileView2;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->f:Lcom/facebook/orca/photos/tiles/ThreadTileView2;

    .line 77
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->g:Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;

    .line 78
    const v0, 0x7f0800e0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->h:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Landroid/widget/ImageView;

    .line 80
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Lcom/facebook/orca/threads/ThreadSummary;

    .line 84
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a()V

    .line 86
    return-void
.end method
