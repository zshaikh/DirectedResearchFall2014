.class public Lam/sunrise/android/calendar/ui/event/details/ab;
.super Landroid/widget/BaseAdapter;
.source "FacebookAttendeesAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lam/sunrise/android/calendar/ui/event/details/ac;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:[Lam/sunrise/android/calendar/api/models/datas/Person;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/event/details/ac;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->a:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->b:Landroid/view/LayoutInflater;

    .line 82
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->c:Lam/sunrise/android/calendar/ui/event/details/ac;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->d:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->e:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->e:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->d:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->d:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v3, 0x7f0b0016

    const/4 v5, 0x0

    .line 180
    if-nez p2, :cond_0

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03004a

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 182
    const v0, 0x7f0200f0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 184
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 185
    invoke-virtual {p2, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/ad;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/details/ad;-><init>()V

    .line 187
    const v0, 0x7f0b0097

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/details/ad;->b:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f0b0098

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/details/ad;->c:Landroid/widget/TextView;

    .line 189
    invoke-virtual {p2, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v0, v1

    .line 194
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    aget-object v1, v1, p1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 196
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/ae;

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;->url:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/event/details/ae;-><init>(Lam/sunrise/android/calendar/ui/event/details/ad;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->d:Lam/sunrise/android/calendar/ui/event/details/ae;

    .line 205
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person;->image:Lam/sunrise/android/calendar/api/models/datas/Person$Image;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person$Image;->thumbnail:Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person$Image$Thumbnail;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->d:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->d:I

    invoke-virtual {v1, v2, v3}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->d:Lam/sunrise/android/calendar/ui/event/details/ae;

    invoke-virtual {v1, v2}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 214
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_2
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person;->rsvpStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v1, v1, Lam/sunrise/android/calendar/api/models/datas/Person;->rsvpStatus:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/details/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/details/j;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_3

    .line 229
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/details/j;->b()I

    move-result v1

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 237
    :goto_3
    return-object p2

    .line 191
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/ad;

    goto/16 :goto_0

    .line 211
    :cond_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->a:Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, v2, Lam/sunrise/android/calendar/api/models/datas/Person;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 231
    :cond_3
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 234
    :cond_4
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/details/ad;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 244
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a([Lam/sunrise/android/calendar/api/models/datas/Person;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-static {p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 100
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/ab;->notifyDataSetInvalidated()V

    .line 114
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 113
    :goto_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/ab;->notifyDataSetChanged()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 108
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    goto :goto_1
.end method

.method public a()[Lam/sunrise/android/calendar/api/models/datas/Person;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    .line 94
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/ab;->notifyDataSetInvalidated()V

    .line 95
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->c:Lam/sunrise/android/calendar/ui/event/details/ac;

    invoke-interface {v2}, Lam/sunrise/android/calendar/ui/event/details/ac;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    array-length v2, v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->c:Lam/sunrise/android/calendar/ui/event/details/ac;

    invoke-interface {v3}, Lam/sunrise/android/calendar/ui/event/details/ac;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    array-length v0, v0

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->c:Lam/sunrise/android/calendar/ui/event/details/ac;

    invoke-interface {v2}, Lam/sunrise/android/calendar/ui/event/details/ac;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/ab;->f:[Lam/sunrise/android/calendar/api/models/datas/Person;

    array-length v2, v2

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/ab;->getItemViewType(I)I

    move-result v0

    .line 164
    packed-switch v0, :pswitch_data_0

    .line 175
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 166
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/ab;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lam/sunrise/android/calendar/ui/event/details/ab;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/ab;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
