.class public Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;
.super Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;
.source "CustomizableEllipsisTextView.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Lam/sunrise/android/calendar/ui/event/details/cards/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->c:I

    return v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setTextWithEllipsis(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 215
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->e:Z

    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->i:Lam/sunrise/android/calendar/ui/event/details/cards/b;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->i:Lam/sunrise/android/calendar/ui/event/details/cards/b;

    invoke-interface {v0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/b;->a(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->e:Z

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->h:I

    return v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a:Z

    return p1
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->g:I

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/cards/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/a;-><init>(Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method private setTextWithEllipsis(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v8

    .line 204
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->h:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 205
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->g:I

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-interface {v8, v0, v6, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 208
    invoke-direct {p0, v9}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a(Z)V

    .line 210
    iput-boolean v9, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a:Z

    .line 211
    invoke-virtual {p0, v8}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->f:Ljava/lang/String;

    .line 62
    iput p2, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->g:I

    .line 63
    iput p3, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->h:I

    .line 64
    return-void
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->c:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->d:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 172
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->g()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->d:Z

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 176
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 182
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a:Z

    if-ne v0, v1, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->a:Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->b:Ljava/lang/String;

    .line 188
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->d:Z

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/cards/SRTextView;->setMaxLines(I)V

    .line 194
    iput p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->c:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->d:Z

    .line 196
    return-void
.end method

.method public setOnTextEllipsizedStateChange(Lam/sunrise/android/calendar/ui/event/details/cards/b;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/cards/CustomizableEllipsisTextView;->i:Lam/sunrise/android/calendar/ui/event/details/cards/b;

    .line 68
    return-void
.end method
