.class public Lam/sunrise/android/calendar/ui/event/e;
.super Landroid/support/v4/widget/a;
.source "CalendarSelectionAdapter.java"

# interfaces
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Bitmap;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/e;->b:I

    .line 143
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/e;->a:Landroid/view/LayoutInflater;

    .line 144
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/e;->k:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->l:I

    .line 147
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->m:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020103

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/e;->n:Landroid/graphics/Bitmap;

    .line 149
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->o:I

    .line 150
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/e;->p:I

    .line 151
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 202
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/e;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/e;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-wide v0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/e;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 207
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 208
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->d:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->c:I

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 215
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
    .line 174
    if-nez p2, :cond_0

    .line 175
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/e;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 178
    :cond_0
    const v0, 0x7f0b012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 181
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/e;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 183
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/e;->mContext:Landroid/content/Context;

    iget v5, p0, Lam/sunrise/android/calendar/ui/event/e;->d:I

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v4, p0, Lam/sunrise/android/calendar/ui/event/e;->c:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_2
    return-object p2
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/g;

    .line 234
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->b:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->a:Ljava/lang/String;

    .line 235
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->d:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->c:Ljava/lang/String;

    .line 236
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->c:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->b:Ljava/lang/String;

    .line 237
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->e:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->d:Ljava/lang/String;

    .line 238
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->e:Ljava/lang/String;

    .line 239
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->g:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->f:Ljava/lang/String;

    .line 240
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->h:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->g:Ljava/lang/String;

    .line 241
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->i:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->h:Ljava/lang/String;

    .line 242
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->j:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lam/sunrise/android/calendar/ui/event/g;->i:Z

    .line 244
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->l:I

    iput v1, v0, Lam/sunrise/android/calendar/ui/event/g;->k:I

    .line 246
    const-string v1, "default"

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->h:Ljava/lang/String;

    .line 251
    :goto_1
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->e:Ljava/lang/String;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/g;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lam/sunrise/android/calendar/ui/event/e;->m:I

    invoke-static {v1, v4, v5, v6}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->j:Ljava/lang/String;

    .line 253
    new-instance v1, Lam/sunrise/android/calendar/ui/event/h;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/e;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/e;->n:Landroid/graphics/Bitmap;

    iget v6, p0, Lam/sunrise/android/calendar/ui/event/e;->m:I

    invoke-direct {v1, v4, v0, v5, v6}, Lam/sunrise/android/calendar/ui/event/h;-><init>(Landroid/content/res/Resources;Lam/sunrise/android/calendar/ui/event/g;Landroid/graphics/Bitmap;I)V

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->m:Lam/sunrise/android/calendar/ui/event/h;

    .line 257
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v1

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v1

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/g;->m:Lam/sunrise/android/calendar/ui/event/h;

    invoke-virtual {v1, v4}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 261
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/e;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->d:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 266
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/e;->mContext:Landroid/content/Context;

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    :cond_0
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/e;->a(I)J

    move-result-wide v3

    .line 277
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 278
    if-ltz v0, :cond_5

    .line 279
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/e;->a(I)J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_5

    .line 280
    const/4 v0, 0x2

    .line 284
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 285
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/e;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 286
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/e;->a(I)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 287
    or-int/lit8 v0, v0, 0x4

    .line 291
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 317
    :goto_4
    :pswitch_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/e;->o:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->o:I

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 318
    return-void

    :cond_2
    move v1, v3

    .line 242
    goto/16 :goto_0

    .line 248
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#ff"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lam/sunrise/android/calendar/ui/event/g;->k:I

    goto/16 :goto_1

    .line 268
    :cond_4
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 269
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/e;->mContext:Landroid/content/Context;

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 293
    :pswitch_1
    const v0, 0x7f0200b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 298
    :pswitch_2
    const v0, 0x7f0200b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 303
    :pswitch_3
    const v0, 0x7f0200b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 308
    :pswitch_4
    const v0, 0x7f0200b0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    .line 291
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
    .line 322
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/e;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 323
    new-instance v2, Lam/sunrise/android/calendar/ui/event/g;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/g;-><init>()V

    .line 324
    const v0, 0x7f0b012a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/event/g;->l:Landroid/widget/CheckedTextView;

    .line 325
    const v0, 0x7f0b0016

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 326
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/widget/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/e;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v1, "connection_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->b:I

    .line 159
    const-string v1, "connection_info"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->c:I

    .line 160
    const-string v1, "connection_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->d:I

    .line 161
    const-string v1, "calendar_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->e:I

    .line 162
    const-string v1, "calendar_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->f:I

    .line 163
    const-string v1, "calendar_title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->g:I

    .line 164
    const-string v1, "calendar_description"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->h:I

    .line 165
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->i:I

    .line 166
    const-string v1, "calendar_is_enabled"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/e;->j:I

    .line 169
    :cond_0
    return-object v0
.end method
