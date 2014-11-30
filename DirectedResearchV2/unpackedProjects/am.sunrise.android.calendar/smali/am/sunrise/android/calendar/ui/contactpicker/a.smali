.class public Lam/sunrise/android/calendar/ui/contactpicker/a;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Lam/sunrise/android/calendar/ui/contactpicker/c;

.field private final k:Ljava/lang/Object;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->k:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->a:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->b:Landroid/view/LayoutInflater;

    .line 100
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->d:I

    .line 102
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->e:I

    .line 103
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->f:I

    .line 104
    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->g:I

    .line 105
    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->h:I

    .line 106
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->i:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->i:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->f:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->f:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/contactpicker/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/contactpicker/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/contactpicker/a;[Lam/sunrise/android/calendar/api/models/datas/Contact;)[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    return-object p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/contactpicker/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/contactpicker/a;)[Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Landroid/view/View;)Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/d;

    .line 119
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    return-object v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 248
    if-nez p2, :cond_0

    .line 249
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 251
    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f0092

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->m:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->notifyDataSetChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method public a([Lam/sunrise/android/calendar/api/models/datas/Contact;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 124
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->notifyDataSetInvalidated()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v0, v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->j:Lam/sunrise/android/calendar/ui/contactpicker/c;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lam/sunrise/android/calendar/ui/contactpicker/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/contactpicker/c;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/a;Lam/sunrise/android/calendar/ui/contactpicker/b;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->j:Lam/sunrise/android/calendar/ui/contactpicker/c;

    .line 136
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->j:Lam/sunrise/android/calendar/ui/contactpicker/c;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f0b0016

    const/4 v2, 0x0

    .line 160
    if-nez p2, :cond_1

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030087

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 162
    new-instance v1, Lam/sunrise/android/calendar/ui/contactpicker/d;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/contactpicker/d;-><init>()V

    .line 163
    const v0, 0x7f0b0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/contactpicker/d;->b:Landroid/widget/ImageView;

    .line 164
    const v0, 0x7f0b0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/contactpicker/d;->c:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0b0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/contactpicker/d;->d:Landroid/widget/TextView;

    .line 166
    invoke-virtual {p2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 171
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->c:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v1, v1, p1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 173
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    new-instance v1, Lam/sunrise/android/calendar/ui/contactpicker/e;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->b:Landroid/widget/ImageView;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v0, v3, v4, v5}, Lam/sunrise/android/calendar/ui/contactpicker/e;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/d;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->e:Lam/sunrise/android/calendar/ui/contactpicker/e;

    .line 178
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v1

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->f:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->f:I

    invoke-virtual {v1, v3, v4}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v1

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->e:Lam/sunrise/android/calendar/ui/contactpicker/e;

    invoke-virtual {v1, v3}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 187
    :goto_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->d:Landroid/widget/TextView;

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->g:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 196
    :goto_2
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_5

    .line 201
    const/4 v1, 0x2

    .line 204
    :goto_3
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/a;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 205
    or-int/lit8 v1, v1, 0x4

    .line 208
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 234
    :goto_4
    :pswitch_0
    iget v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->d:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->e:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->d:I

    iget v5, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->e:I

    invoke-virtual {p2, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 237
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->m:Ljava/lang/String;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 243
    :goto_5
    return-object p2

    .line 168
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/d;

    goto/16 :goto_0

    .line 184
    :cond_2
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 191
    :cond_3
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->d:Landroid/widget/TextView;

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/a;->h:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/d;->a:Lam/sunrise/android/calendar/api/models/datas/Contact;

    iget-object v3, v3, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 210
    :pswitch_1
    const v1, 0x7f0200b2

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 215
    :pswitch_2
    const v1, 0x7f0200b3

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 220
    :pswitch_3
    const v1, 0x7f0200b1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 225
    :pswitch_4
    const v1, 0x7f0200b0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 240
    :cond_4
    invoke-virtual {p2, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_5

    :cond_5
    move v1, v2

    goto :goto_3

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
