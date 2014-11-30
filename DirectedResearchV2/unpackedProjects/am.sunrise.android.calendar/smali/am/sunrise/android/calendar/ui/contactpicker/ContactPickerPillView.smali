.class public Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;
.super Landroid/widget/LinearLayout;
.source "ContactPickerPillView.java"

# interfaces
.implements Lcom/tokenautocomplete/k;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lam/sunrise/android/calendar/ui/contactpicker/o;

.field private f:Lam/sunrise/android/calendar/ui/contactpicker/n;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a()V

    .line 65
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->c:I

    .line 123
    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->d:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->d:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->c:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->c:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/o;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->d:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->c:I

    invoke-direct {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/contactpicker/o;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->e:Lam/sunrise/android/calendar/ui/contactpicker/o;

    .line 128
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/contactpicker/n;->a()V

    .line 149
    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->g:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->c:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->e:Lam/sunrise/android/calendar/ui/contactpicker/o;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->g:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->b()V

    .line 75
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 117
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->b:Landroid/widget/ImageView;

    .line 111
    return-void
.end method

.method public setOnContactPickerPillListener(Lam/sunrise/android/calendar/ui/contactpicker/n;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    .line 69
    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 87
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/contactpicker/n;->a()V

    .line 90
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 96
    if-eqz p1, :cond_1

    .line 97
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->b:Landroid/widget/ImageView;

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->f:Lam/sunrise/android/calendar/ui/contactpicker/n;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/contactpicker/n;->a()V

    .line 105
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->b()V

    goto :goto_0
.end method

.method public setToken(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 79
    check-cast p1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 80
    iget-object v0, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    iget-object v1, p1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerPillView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
