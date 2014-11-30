.class public Lam/sunrise/android/calendar/ui/b/d;
.super Landroid/support/v4/app/e;
.source "SRDialog.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    .line 77
    const/4 v0, 0x1

    const v1, 0x7f100042

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/b/d;->setStyle(II)V

    .line 78
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    .line 58
    invoke-virtual {v0, p4}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 63
    invoke-virtual {p1, p3}, Lam/sunrise/android/calendar/ui/b/d;->setArguments(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lam/sunrise/android/calendar/ui/b/d;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 65
    invoke-virtual {p1, v1, p4}, Lam/sunrise/android/calendar/ui/b/d;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public static a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-static {p0, p1, v0, v0, p2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/support/v4/app/i;Lam/sunrise/android/calendar/ui/b/d;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 311
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->dismiss()V

    .line 312
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public a(IILandroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 244
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030043

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/b/d;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    const v1, 0x7f0b0016

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 248
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/b/d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->d:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/b/h;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/b/h;-><init>(Lam/sunrise/android/calendar/ui/b/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 175
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->dismiss()V

    .line 176
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 220
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public d(I)V
    .locals 4

    .prologue
    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0086

    if-ne v2, v3, :cond_1

    .line 265
    const v2, 0x7f0b0016

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    if-ne v0, p1, :cond_1

    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 272
    :cond_0
    return-void

    .line 262
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 315
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->dismiss()V

    .line 316
    return-void
.end method

.method public e(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 319
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->dismiss()V

    .line 320
    return-void
.end method

.method public f(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 82
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/support/v4/app/e;->onStart()V

    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_0

    .line 152
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 153
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 154
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0097

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 161
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 87
    const v0, 0x7f0b0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->a:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f0b008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->b:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f0b0089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->c:Landroid/view/View;

    .line 91
    const v0, 0x7f0b008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->e:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0b008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->f:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0b0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->d:Landroid/view/View;

    .line 94
    const v0, 0x7f0b008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->g:Landroid/widget/FrameLayout;

    .line 95
    const v0, 0x7f0b008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->h:Landroid/view/View;

    .line 96
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->i:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->c:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->i:Landroid/widget/TextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/b/e;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/b/e;-><init>(Lam/sunrise/android/calendar/ui/b/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0b0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->j:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->c:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->j:Landroid/widget/TextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/b/f;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/b/f;-><init>(Lam/sunrise/android/calendar/ui/b/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0b0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->k:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/b/d;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->c:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 114
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->k:Landroid/widget/TextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/b/g;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/b/g;-><init>(Lam/sunrise/android/calendar/ui/b/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/b/d;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1, p2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/b/d;->g:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 134
    const v0, 0x7f0b008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 139
    :cond_1
    invoke-virtual {p0, p2}, Lam/sunrise/android/calendar/ui/b/d;->a(Landroid/os/Bundle;)V

    .line 140
    return-void
.end method
