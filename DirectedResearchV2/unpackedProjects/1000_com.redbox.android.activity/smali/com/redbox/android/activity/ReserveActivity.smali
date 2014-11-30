.class public Lcom/redbox/android/activity/ReserveActivity;
.super Lcom/redbox/android/activity/RBBaseActivity;
.source "ReserveActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/activity/ReserveActivity$HandleCardRefreshRequest;,
        Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;,
        Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;,
        Lcom/redbox/android/activity/ReserveActivity$HandleReserveMovieRequest;
    }
.end annotation


# static fields
.field public static final CHANGED_CREDIT_CARD_REQUEST_CODE:I = 0xb

.field public static final CREDIT_CARD_REQUEST_CODE:I = 0x5

.field public static final MOVIE_DETAIL_OBJECT:Ljava/lang/String; = "moviedetail.obj"

.field public static final NEW_CREDIT_CARD_REQUEST_CODE:I = 0x7


# instance fields
.field activityTitle:Landroid/widget/TextView;

.field applyCredit:Z

.field applyCreditCb:Landroid/widget/CheckBox;

.field blurayFormatCb:Landroid/widget/CheckBox;

.field cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbox/android/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field cart:Lcom/redbox/android/model/Cart;

.field cvv:Landroid/widget/EditText;

.field headerView:Lcom/redbox/android/view/HeaderView;

.field indexOfCardShown:I

.field mRatingCb:Landroid/widget/CheckBox;

.field movie:Lcom/redbox/android/model/MovieDetail;

.field rRatingCb:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/redbox/android/activity/RBBaseActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/ReserveActivity;->applyCredit:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/ReserveActivity;Z)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/redbox/android/activity/ReserveActivity;->problemReserving(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/redbox/android/activity/ReserveActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$2(Lcom/redbox/android/activity/ReserveActivity;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/redbox/android/activity/ReserveActivity;->closeActivity()V

    return-void
.end method

.method private closeActivity()V
    .locals 1

    .prologue
    .line 545
    const-string v0, "Finishing activity"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/redbox/android/activity/ReserveActivity;->finish()V

    .line 547
    return-void
.end method

.method private problemReserving(Z)V
    .locals 2
    .param p1, "networkError"    # Z

    .prologue
    .line 174
    const-string v0, "Network error while reserving movie"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/redbox/android/activity/ReserveActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/redbox/android/activity/ReserveActivity$3;-><init>(Lcom/redbox/android/activity/ReserveActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method private updateUI()V
    .locals 23

    .prologue
    .line 201
    const v20, 0x7f070069

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 202
    .local v10, "img":Landroid/widget/ImageView;
    const v20, 0x7f070066

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 204
    .local v12, "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/MovieDetail;->getName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/redbox/android/activity/ReserveActivity;->getCacheDir()Ljava/io/File;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "full_"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/redbox/android/model/MovieDetail;->getImg()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v9, "imageFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 210
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 209
    invoke-static/range {v20 .. v20}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    :cond_0
    const v20, 0x7f070070

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 214
    .local v13, "price":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getPrice()Ljava/lang/String;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v20, 0x7f070072

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 216
    .local v17, "tax":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getTax()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const v20, 0x7f070074

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 218
    .local v18, "total":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getTotal()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const v20, 0x7f07006b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 221
    .local v19, "vendor":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getVendor()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v20, 0x7f07006c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 225
    .local v11, "machine_name":Landroid/widget/TextView;
    const v20, 0x7f07006d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 227
    .local v4, "address":Landroid/widget/TextView;
    const-string v3, "\n"

    .line 228
    .local v3, "NEW_LINE":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/redbox/android/model/Cart;->getAddress()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/redbox/android/model/Cart;->getCity()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 229
    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/redbox/android/model/Cart;->getState()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/redbox/android/model/Cart;->getZip()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 228
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "addressTxt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getMachineName()Ljava/lang/String;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    const v20, 0x7f070076

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 234
    .local v14, "res":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getReservationPeriod()Ljava/lang/String;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, p0

    iget v0, v0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 237
    new-instance v8, Lcom/redbox/android/activity/ReserveActivity$4;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/ReserveActivity$4;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 249
    .local v8, "cardSelect":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/redbox/android/model/Card;

    .line 250
    .local v6, "c":Lcom/redbox/android/model/Card;
    const v20, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 251
    .local v7, "cardAlias":Landroid/widget/TextView;
    const v20, 0x7f070078

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 254
    .local v16, "selectCardImage":Landroid/view/View;
    invoke-virtual {v6}, Lcom/redbox/android/model/Card;->getAlias()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const/16 v20, 0x0

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cvv:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setVisibility(I)V

    .line 289
    .end local v6    # "c":Lcom/redbox/android/model/Card;
    :goto_0
    const v20, 0x7f070077

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 291
    .local v15, "rightCol":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/MovieDetail;->isRRated()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 292
    const v20, 0x7f07007d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "NEW_LINE":Ljava/lang/String;
    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/activity/ReserveActivity;->rRatingCb:Landroid/widget/CheckBox;

    .line 293
    const v20, 0x7f07007c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 294
    const v20, 0x7f07007b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/MovieDetail;->isMRated()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 298
    const v20, 0x7f070080

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/activity/ReserveActivity;->mRatingCb:Landroid/widget/CheckBox;

    .line 299
    const v20, 0x7f07007f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v20, 0x7f07007e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/MovieDetail;->isBluRay()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 304
    const v20, 0x7f070083

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/activity/ReserveActivity;->blurayFormatCb:Landroid/widget/CheckBox;

    .line 305
    const v20, 0x7f070082

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const v20, 0x7f070081

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->cart:Lcom/redbox/android/model/Cart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/model/Cart;->getNumberOfCredits()I

    move-result v20

    if-lez v20, :cond_4

    .line 311
    const v20, 0x7f070086

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbox/android/activity/ReserveActivity;->applyCreditCb:Landroid/widget/CheckBox;

    .line 312
    const v20, 0x7f070085

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const v20, 0x7f070084

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/ReserveActivity;->applyCreditCb:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    .line 315
    new-instance v21, Lcom/redbox/android/activity/ReserveActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/ReserveActivity$6;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 340
    :cond_4
    return-void

    .line 263
    .end local v7    # "cardAlias":Landroid/widget/TextView;
    .end local v8    # "cardSelect":Landroid/view/View$OnClickListener;
    .end local v15    # "rightCol":Landroid/widget/LinearLayout;
    .end local v16    # "selectCardImage":Landroid/view/View;
    .restart local v3    # "NEW_LINE":Ljava/lang/String;
    :cond_5
    const v20, 0x7f070079

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 264
    .restart local v7    # "cardAlias":Landroid/widget/TextView;
    const v20, 0x7f070078

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 267
    .restart local v16    # "selectCardImage":Landroid/view/View;
    new-instance v8, Lcom/redbox/android/activity/ReserveActivity$5;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/ReserveActivity$5;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 280
    .restart local v8    # "cardSelect":Landroid/view/View$OnClickListener;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const/16 v20, 0x0

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    const-string v20, "Add New Card"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 344
    const/4 v7, 0x5

    if-ne p1, v7, :cond_0

    .line 346
    const-string v7, "cards.index"

    iget v8, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 345
    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 347
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    iget v8, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Card;

    .line 348
    .local v0, "c":Lcom/redbox/android/model/Card;
    const v7, 0x7f070079

    invoke-virtual {p0, v7}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 349
    .local v2, "cardAlias":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    .end local v0    # "c":Lcom/redbox/android/model/Card;
    .end local v2    # "cardAlias":Landroid/widget/TextView;
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 399
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Result :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 400
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-super {p0, p1, p2, p3}, Lcom/redbox/android/activity/RBBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 402
    :goto_1
    return-void

    .line 354
    :sswitch_0
    const-string v7, "new.card"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    .line 353
    check-cast v5, Lcom/redbox/android/model/Card;

    .line 355
    .local v5, "newcard":Lcom/redbox/android/model/Card;
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "New card : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/redbox/android/model/Card;->getCardNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    iget v8, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Card;

    .line 360
    .restart local v0    # "c":Lcom/redbox/android/model/Card;
    const v7, 0x7f070079

    invoke-virtual {p0, v7}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 361
    .restart local v2    # "cardAlias":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-direct {p0}, Lcom/redbox/android/activity/ReserveActivity;->updateUI()V

    goto :goto_0

    .line 366
    .end local v0    # "c":Lcom/redbox/android/model/Card;
    .end local v2    # "cardAlias":Landroid/widget/TextView;
    .end local v5    # "newcard":Lcom/redbox/android/model/Card;
    :sswitch_1
    const-string v7, "card.changed"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    .line 365
    check-cast v6, Lcom/redbox/android/model/Card;

    .line 367
    .local v6, "newcard2":Lcom/redbox/android/model/Card;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Card ID "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v8, "card.index"

    const-wide/16 v9, 0x0

    invoke-virtual {p3, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 367
    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    const/4 v7, -0x1

    iput v7, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 370
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 378
    iget v7, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 379
    const-string v7, "Error modifing card"

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 371
    :cond_1
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Card;

    invoke-virtual {v0}, Lcom/redbox/android/model/Card;->getId()J

    move-result-wide v7

    .line 372
    const-string v9, "card.index"

    const-wide/16 v10, 0x0

    .line 371
    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 373
    iput v4, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 370
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 382
    :cond_3
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    iget v8, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "->Card changed : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    iget v8, p0, Lcom/redbox/android/activity/ReserveActivity;->indexOfCardShown:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 387
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 388
    const-string v8, "card.index"

    const-wide/16 v9, 0x0

    invoke-virtual {p3, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 385
    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object v7, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/redbox/android/activity/ReserveActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/redbox/android/model/Card;

    .line 390
    .local v1, "c2":Lcom/redbox/android/model/Card;
    const v7, 0x7f070079

    invoke-virtual {p0, v7}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 391
    .local v3, "cardAlias2":Landroid/widget/TextView;
    invoke-virtual {v6}, Lcom/redbox/android/model/Card;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-direct {p0}, Lcom/redbox/android/activity/ReserveActivity;->updateUI()V

    goto/16 :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/redbox/android/activity/RBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->setContentView(I)V

    .line 65
    const v1, 0x7f07007a

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->cvv:Landroid/widget/EditText;

    .line 67
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->activityTitle:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->activityTitle:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 69
    const-string v1, "Title View Null"

    invoke-static {p0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->activityTitle:Landroid/widget/TextView;

    const v2, 0x7f050026

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->activityTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/redbox/android/view/HeaderView;

    iput-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    .line 76
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    invoke-virtual {v1}, Lcom/redbox/android/view/HeaderView;->setTermsButton()V

    .line 77
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/redbox/android/activity/ReserveActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/redbox/android/utils/RBTracker;->setApplication(Landroid/app/Application;)V

    .line 78
    invoke-static {}, Lcom/redbox/android/utils/RBTracker;->getInstance()Lcom/redbox/android/utils/RBTracker;

    move-result-object v1

    invoke-virtual {p0}, Lcom/redbox/android/activity/ReserveActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/redbox/android/utils/RBTracker;->trackCartAddition(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/redbox/android/activity/ReserveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 80
    const-string v2, "moviedetail.obj"

    .line 79
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/redbox/android/model/MovieDetail;

    iput-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    .line 82
    const v1, 0x7f070068

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 83
    .local v0, "confirmRes":Landroid/widget/ImageButton;
    new-instance v1, Lcom/redbox/android/activity/ReserveActivity$1;

    invoke-direct {v1, p0}, Lcom/redbox/android/activity/ReserveActivity$1;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/redbox/android/activity/ReserveActivity;->showDialog(I)V

    .line 140
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f05000c

    invoke-virtual {p0, v2}, Lcom/redbox/android/activity/ReserveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/redbox/android/activity/ReserveActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/redbox/android/activity/ReserveActivity$2;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/ReserveActivity$2;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 150
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleCartGetItemRequest;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 152
    iget-object v3, p0, Lcom/redbox/android/activity/ReserveActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    invoke-virtual {v3}, Lcom/redbox/android/model/MovieDetail;->getId()I

    move-result v3

    .line 153
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbox/android/model/SelectedKioskManager;->getSelected()Lcom/redbox/android/model/Kiosk;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-virtual {v1, v2, v3, v4}, Lcom/redbox/android/http/ServerCommunicationHandler;->cartAddItem(Lcom/redbox/android/http/ServerCommunicationListener;ILjava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/redbox/android/http/ServerCommunicationHandler;->getInstance()Lcom/redbox/android/http/ServerCommunicationHandler;

    move-result-object v1

    .line 157
    new-instance v2, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;

    invoke-direct {v2, p0}, Lcom/redbox/android/activity/ReserveActivity$HandleGetCardsRequest;-><init>(Lcom/redbox/android/activity/ReserveActivity;)V

    .line 156
    invoke-virtual {v1, v2}, Lcom/redbox/android/http/ServerCommunicationHandler;->getCards(Lcom/redbox/android/http/ServerCommunicationListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/redbox/android/activity/ReserveActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 160
    const/4 v2, 0x2

    .line 159
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/redbox/android/activity/RBBaseActivity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/redbox/android/activity/ReserveActivity;->headerView:Lcom/redbox/android/view/HeaderView;

    invoke-virtual {v0}, Lcom/redbox/android/view/HeaderView;->updateButtons()V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/redbox/android/activity/ReserveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 170
    const/4 v1, 0x2

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 171
    return-void
.end method
