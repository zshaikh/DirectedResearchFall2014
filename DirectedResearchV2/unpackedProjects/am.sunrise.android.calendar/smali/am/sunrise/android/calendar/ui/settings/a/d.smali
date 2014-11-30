.class public Lam/sunrise/android/calendar/ui/settings/a/d;
.super Landroid/support/v4/widget/a;
.source "SettingsDefaultCalendarAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lam/sunrise/android/calendar/ui/settings/a/h;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/settings/a/h;Landroid/widget/ListView;)V
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->d:I

    .line 151
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->a:Landroid/widget/ListView;

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->b:Landroid/view/LayoutInflater;

    .line 153
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->c:Lam/sunrise/android/calendar/ui/settings/a/h;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->l:I

    .line 156
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->m:I

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020103

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->n:Landroid/graphics/Bitmap;

    .line 158
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->o:I

    .line 159
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->p:I

    .line 160
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/settings/a/d;)Lam/sunrise/android/calendar/ui/settings/a/h;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->c:Lam/sunrise/android/calendar/ui/settings/a/h;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/settings/a/d;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a(I)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 211
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/d;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/d;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-wide v0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/d;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 216
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 217
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->f:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->e:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 183
    if-nez p2, :cond_0

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 187
    :cond_0
    const v0, 0x7f0b0140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/d;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 191
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 192
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->mContext:Landroid/content/Context;

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->f:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v4, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->e:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 198
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_2
    return-object p2
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 241
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/a/i;

    .line 243
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->d:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->a:Ljava/lang/String;

    .line 244
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->f:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->c:Ljava/lang/String;

    .line 245
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->e:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->b:Ljava/lang/String;

    .line 246
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->g:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->d:Ljava/lang/String;

    .line 247
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->h:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->e:Ljava/lang/String;

    .line 248
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->i:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->f:Ljava/lang/String;

    .line 249
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->j:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->g:Ljava/lang/String;

    .line 250
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->k:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->h:Ljava/lang/String;

    .line 252
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->l:I

    iput v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->j:I

    .line 254
    const-string v2, "default"

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->h:Ljava/lang/String;

    .line 259
    :goto_0
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->e:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->h:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->m:I

    invoke-static {v2, v3, v4, v5}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->i:Ljava/lang/String;

    .line 261
    new-instance v2, Lam/sunrise/android/calendar/ui/settings/a/j;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->n:Landroid/graphics/Bitmap;

    iget v5, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->m:I

    invoke-direct {v2, v3, v0, v4, v5}, Lam/sunrise/android/calendar/ui/settings/a/j;-><init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/settings/a/i;Landroid/graphics/Bitmap;I)V

    iput-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->l:Lam/sunrise/android/calendar/ui/settings/a/j;

    .line 265
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->l:Lam/sunrise/android/calendar/ui/settings/a/j;

    invoke-virtual {v2, v3}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 269
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->q:Ljava/lang/String;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 280
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/d;->a(I)J

    move-result-wide v2

    .line 282
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 283
    if-ltz v0, :cond_3

    .line 284
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/settings/a/d;->a(I)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 285
    const/4 v0, 0x2

    .line 289
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 290
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/settings/a/d;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 291
    invoke-virtual {p0, v4}, Lam/sunrise/android/calendar/ui/settings/a/d;->a(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 292
    or-int/lit8 v0, v0, 0x4

    .line 296
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_3
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->o:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->o:I

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 323
    return-void

    .line 256
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->j:I

    goto/16 :goto_0

    .line 275
    :cond_2
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    .line 298
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 303
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 308
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 313
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    .line 296
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
    .locals 4

    .prologue
    const v3, 0x7f0b0016

    .line 327
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030091

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 328
    new-instance v2, Lam/sunrise/android/calendar/ui/settings/a/i;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/settings/a/i;-><init>()V

    .line 329
    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    .line 330
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 331
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/settings/a/i;->k:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/CheckedTextView;->setTag(ILjava/lang/Object;)V

    .line 332
    new-instance v0, Lam/sunrise/android/calendar/ui/settings/a/e;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/settings/a/e;-><init>(Lam/sunrise/android/calendar/ui/settings/a/d;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/support/v4/widget/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->q:Ljava/lang/String;

    .line 166
    iget v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string v1, "connection_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->d:I

    .line 169
    const-string v1, "connection_info"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->e:I

    .line 170
    const-string v1, "connection_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->f:I

    .line 171
    const-string v1, "calendar_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->g:I

    .line 172
    const-string v1, "calendar_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->h:I

    .line 173
    const-string v1, "calendar_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->i:I

    .line 174
    const-string v1, "calendar_description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->j:I

    .line 175
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/settings/a/d;->k:I

    .line 178
    :cond_0
    return-object v0
.end method
