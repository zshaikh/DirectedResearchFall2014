.class public Lam/sunrise/android/calendar/ui/event/details/h;
.super Landroid/widget/CursorAdapter;
.source "EventAttendeesAdapter.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 112
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/h;->a:Landroid/view/LayoutInflater;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/h;->b:Landroid/graphics/drawable/Drawable;

    .line 115
    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/h;->c:I

    .line 116
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/h;->b:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/h;->c:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/h;->c:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 139
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/k;

    .line 140
    iget v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->d:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->a:Ljava/lang/String;

    .line 141
    iget v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->b:Ljava/lang/String;

    .line 142
    iget v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->c:Ljava/lang/String;

    .line 144
    new-instance v1, Lam/sunrise/android/calendar/ui/event/details/l;

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/k;->a:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/event/details/k;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/h;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v0, v2, v3, v4}, Lam/sunrise/android/calendar/ui/event/details/l;-><init>(Lam/sunrise/android/calendar/ui/event/details/k;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->j:Lam/sunrise/android/calendar/ui/event/details/l;

    .line 148
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/k;->a:Ljava/lang/String;

    invoke-static {v2}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v1

    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/h;->c:I

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/details/h;->c:I

    invoke-virtual {v1, v2, v3}, Lcom/b/a/as;->a(II)Lcom/b/a/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/as;->b()Lcom/b/a/as;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/k;->j:Lam/sunrise/android/calendar/ui/event/details/l;

    invoke-virtual {v1, v2}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 158
    :goto_0
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/details/k;->h:Landroid/widget/TextView;

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->c:Ljava/lang/String;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/details/j;->a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/event/details/j;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_2

    .line 163
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/details/k;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/details/j;->b()I

    move-result v1

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 169
    :goto_2
    return-void

    .line 155
    :cond_0
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/h;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/details/k;->a:Ljava/lang/String;

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/details/k;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/h;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    const v0, 0x7f0200f0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 125
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    new-instance v2, Lam/sunrise/android/calendar/ui/event/details/k;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/details/k;-><init>()V

    .line 127
    const-string v0, "person_email_1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/event/details/k;->d:I

    .line 128
    const-string v0, "person_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/event/details/k;->e:I

    .line 129
    const-string v0, "person_rsvp_status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lam/sunrise/android/calendar/ui/event/details/k;->f:I

    .line 130
    const v0, 0x7f0b0097

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/event/details/k;->g:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0b0098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/event/details/k;->h:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b0099

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/event/details/k;->i:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0b0016

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 134
    return-object v1
.end method
