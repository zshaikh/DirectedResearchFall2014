.class Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddCreditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbox/android/activity/AddCreditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "customAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private cardsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbox/android/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/redbox/android/activity/AddCreditCardActivity;


# direct methods
.method public constructor <init>(Lcom/redbox/android/activity/AddCreditCardActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/redbox/android/model/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p3, "cardsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/redbox/android/model/Card;>;"
    iput-object p1, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->this$0:Lcom/redbox/android/activity/AddCreditCardActivity;

    .line 645
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 647
    iput-object p3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->cardsList:Ljava/util/ArrayList;

    .line 648
    iput-object p2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->context:Landroid/content/Context;

    .line 651
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 650
    iput-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public createResource(ILandroid/view/View;Landroid/view/ViewGroup;IZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "resource"    # I
    .param p5, "flag"    # Z

    .prologue
    .line 685
    move-object v1, p2

    .line 686
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_1

    .line 687
    const-string v2, "Inside Inflate:"

    const-string v3, "Creating Inflater"

    invoke-static {v2, v3}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 689
    new-instance v0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;-><init>(Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;)V

    .line 690
    .local v0, "holder":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;
    if-eqz p5, :cond_0

    .line 691
    const v2, 0x7f07008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 696
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 701
    :goto_1
    if-eqz p5, :cond_2

    .line 702
    iget-object v2, v0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->cardsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
    check-cast p0, Lcom/redbox/android/model/Card;

    invoke-virtual {p0}, Lcom/redbox/android/model/Card;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_2
    return-object v1

    .line 693
    .restart local p0    # "this":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
    :cond_0
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;->text:Landroid/widget/TextView;

    goto :goto_0

    .line 699
    .end local v0    # "holder":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;
    goto :goto_1

    .line 704
    :cond_2
    iget-object v2, v0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->cardsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;
    check-cast p0, Lcom/redbox/android/model/Card;

    invoke-virtual {p0}, Lcom/redbox/android/model/Card;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->cardsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 677
    const v4, 0x1090009

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->createResource(ILandroid/view/View;Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 671
    iget-object v0, p0, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->cardsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 666
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 661
    const v4, 0x7f030015

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/redbox/android/activity/AddCreditCardActivity$customAdapter;->createResource(ILandroid/view/View;Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
