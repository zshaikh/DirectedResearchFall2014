.class public Lam/sunrise/android/calendar/ui/contactpicker/t;
.super Landroid/support/v4/widget/a;
.source "SuggestedPeopleAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->a:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->b:I

    .line 101
    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->c:I

    .line 102
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->d:I

    .line 103
    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->e:I

    .line 104
    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->f:I

    .line 105
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->g:Landroid/graphics/drawable/Drawable;

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->d:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->d:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(Landroid/view/View;)Lam/sunrise/android/calendar/api/models/datas/Contact;
    .locals 3

    .prologue
    .line 110
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/v;

    .line 111
    new-instance v1, Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/datas/Contact;-><init>()V

    .line 112
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->a:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    .line 113
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->b:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->firstName:Ljava/lang/String;

    .line 114
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->c:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->lastName:Ljava/lang/String;

    .line 115
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->d:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    .line 116
    return-object v1
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 214
    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0f0093

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 215
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 136
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/contactpicker/v;

    .line 137
    iget v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->e:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->a:Ljava/lang/String;

    .line 138
    iget v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->f:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->b:Ljava/lang/String;

    .line 139
    iget v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->g:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->c:Ljava/lang/String;

    .line 140
    iget v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->h:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->d:Ljava/lang/String;

    .line 142
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    new-instance v2, Lam/sunrise/android/calendar/ui/contactpicker/w;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->d:Ljava/lang/String;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->i:Landroid/widget/ImageView;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->g:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v0, v3, v4, v5}, Lam/sunrise/android/calendar/ui/contactpicker/w;-><init>(Lam/sunrise/android/calendar/ui/contactpicker/v;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->l:Lam/sunrise/android/calendar/ui/contactpicker/w;

    .line 147
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->d:Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v2

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->d:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->l:Lam/sunrise/android/calendar/ui/contactpicker/w;

    invoke-virtual {v2, v3}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 156
    :goto_0
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->j:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->k:Landroid/widget/TextView;

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->e:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    :goto_1
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->k:Landroid/widget/TextView;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 171
    add-int/lit8 v0, v2, -0x1

    if-ltz v0, :cond_3

    .line 172
    const/4 v0, 0x2

    .line 175
    :goto_2
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/contactpicker/t;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 176
    or-int/lit8 v0, v0, 0x4

    .line 179
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_3
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->b:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->c:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->b:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->c:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    return-void

    .line 153
    :cond_1
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->k:Landroid/widget/TextView;

    iget v3, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->f:I

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 162
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->j:Landroid/widget/TextView;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/contactpicker/v;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 181
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 186
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 191
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 196
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    .line 179
    nop

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

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/contactpicker/t;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030087

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    new-instance v2, Lam/sunrise/android/calendar/ui/contactpicker/v;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/contactpicker/v;-><init>()V

    .line 123
    const-string v0, "suggested_people_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->e:I

    .line 124
    const-string v0, "suggested_people_firstname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->f:I

    .line 125
    const-string v0, "suggested_people_lastname"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->g:I

    .line 126
    const-string v0, "suggested_people_email"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->h:I

    .line 127
    const v0, 0x7f0b0130

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->i:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0b0131

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->j:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0b0132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/contactpicker/v;->k:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0b0016

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 131
    return-object v1
.end method
