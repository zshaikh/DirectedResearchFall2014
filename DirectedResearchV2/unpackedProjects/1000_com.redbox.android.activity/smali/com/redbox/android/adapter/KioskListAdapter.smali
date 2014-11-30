.class public Lcom/redbox/android/adapter/KioskListAdapter;
.super Landroid/widget/BaseAdapter;
.source "KioskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;,
        Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;,
        Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;
    }
.end annotation


# instance fields
.field addFav:Landroid/widget/ImageButton;

.field address:Landroid/widget/TextView;

.field btnMap:Landroid/widget/ImageButton;

.field city:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private count:I

.field favIds:Ljava/lang/String;

.field favLabel:Z

.field favLabelText:Landroid/widget/TextView;

.field fiveLabelText:Landroid/widget/TextView;

.field fromServerCount:I

.field inv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Kiosk;",
            ">;"
        }
    .end annotation
.end field

.field listenerForKioskSelection:Landroid/view/View$OnClickListener;

.field machineName:Landroid/widget/TextView;

.field movieMode:Z

.field name:Landroid/widget/TextView;

.field nearby10Label:Z

.field nearby5Label:Z

.field remFav:Landroid/widget/ImageButton;

.field tenLabelText:Landroid/widget/TextView;

.field tenPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabel:Z

    .line 38
    iput-boolean v1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->nearby5Label:Z

    .line 39
    iput-boolean v1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->nearby10Label:Z

    .line 51
    const-string v0, "NearByKiosk adapter initiating"

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->context:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    .line 54
    iput v1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->count:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favIds:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->inv:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/adapter/KioskListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "List requested position , current : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const v4, 0x7f070031

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current getview position : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    const-string v3, " , Favs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fromServerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/redbox/android/model/Kiosk;

    .line 104
    .local v0, "current":Lcom/redbox/android/model/Kiosk;
    if-nez p2, :cond_0

    .line 105
    const-string v2, "Convert is null"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 107
    const v3, 0x7f030009

    .line 106
    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " current : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->isFav()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const v2, 0x7f070022

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabelText:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->isFav()I

    move-result v2

    if-ne v2, v7, :cond_3

    if-nez p1, :cond_3

    .line 115
    iput-boolean v7, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabel:Z

    .line 116
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const-string v2, "Seting FavLabel"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :goto_0
    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fromServerCount:I

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_1
    const v2, 0x7f070033

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fiveLabelText:Landroid/widget/TextView;

    .line 133
    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fromServerCount:I

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fromServerCount:I

    iget v3, p0, Lcom/redbox/android/adapter/KioskListAdapter;->tenPos:I

    if-eq v2, v3, :cond_4

    .line 134
    iput-boolean v7, p0, Lcom/redbox/android/adapter/KioskListAdapter;->nearby5Label:Z

    .line 135
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fiveLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    const v2, 0x7f070032

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const-string v2, "Seting 5Label"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :goto_1
    const v2, 0x7f070035

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->tenLabelText:Landroid/widget/TextView;

    .line 147
    iget v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->tenPos:I

    if-ne p1, v2, :cond_5

    .line 149
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->tenLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const v2, 0x7f070034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    const-string v2, "Seting 10Label"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :goto_2
    const v2, 0x7f070038

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->name:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f07003a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->address:Landroid/widget/TextView;

    .line 161
    const v2, 0x7f07003b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->city:Landroid/widget/TextView;

    .line 162
    const v2, 0x7f070039

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->machineName:Landroid/widget/TextView;

    .line 163
    const v2, 0x7f070036

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/redbox/android/view/SelectKioskImageButton;

    .line 165
    .local v1, "selectButton":Lcom/redbox/android/view/SelectKioskImageButton;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>>>>>>>>>>>>>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/redbox/android/adapter/KioskListAdapter;->inv:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-boolean v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->movieMode:Z

    if-eqz v2, :cond_7

    .line 167
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->inv:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 168
    const-string v2, "Movie mode, setting search button diabled"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    const v2, 0x7f020039

    invoke-virtual {v1, v2}, Lcom/redbox/android/view/SelectKioskImageButton;->setImageResource(I)V

    .line 170
    invoke-virtual {v1, v8}, Lcom/redbox/android/view/SelectKioskImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_2
    :goto_3
    invoke-virtual {v1, v0}, Lcom/redbox/android/view/SelectKioskImageButton;->setKiosk(Lcom/redbox/android/model/Kiosk;)V

    .line 185
    const v2, 0x7f07003e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->btnMap:Landroid/widget/ImageButton;

    .line 186
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->btnMap:Landroid/widget/ImageButton;

    new-instance v3, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;

    invoke-direct {v3, p0, p1}, Lcom/redbox/android/adapter/KioskListAdapter$MapClickListener;-><init>(Lcom/redbox/android/adapter/KioskListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v2, 0x7f07003d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->addFav:Landroid/widget/ImageButton;

    .line 190
    const v2, 0x7f07003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    .line 192
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->isFav()I

    move-result v2

    if-ne v2, v7, :cond_9

    .line 193
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_4
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->address:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->city:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getMachineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 202
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->machineName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getMachineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->machineName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_5
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->isFav()I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 209
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    const v3, 0x7f02004d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 211
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->addFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    new-instance v3, Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;

    invoke-direct {v3, p0, p1}, Lcom/redbox/android/adapter/KioskListAdapter$RemFavClickListener;-><init>(Lcom/redbox/android/adapter/KioskListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favIds:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favIds:Ljava/lang/String;

    .line 227
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Added list item : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " @ position :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    return-object p2

    .line 121
    .end local v1    # "selectButton":Lcom/redbox/android/view/SelectKioskImageButton;
    :cond_3
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fiveLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    const v2, 0x7f070032

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 154
    :cond_5
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->tenLabelText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    const v2, 0x7f070034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 172
    .restart local v1    # "selectButton":Lcom/redbox/android/view/SelectKioskImageButton;
    :cond_6
    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Lcom/redbox/android/view/SelectKioskImageButton;->setImageResource(I)V

    .line 173
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->listenerForKioskSelection:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->listenerForKioskSelection:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/redbox/android/view/SelectKioskImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 178
    :cond_7
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->listenerForKioskSelection:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_8

    .line 179
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->listenerForKioskSelection:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/redbox/android/view/SelectKioskImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_8
    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Lcom/redbox/android/view/SelectKioskImageButton;->setImageResource(I)V

    .line 182
    const-string v2, "Not in movie mode"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 195
    :cond_9
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->name:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mi.)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 205
    :cond_a
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->machineName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 214
    :cond_b
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favIds:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 215
    const-string v2, "Alread Set Fav"

    invoke-static {p0, v2}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 217
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 218
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->addFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 221
    :cond_c
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->addFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->remFav:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->addFav:Landroid/widget/ImageButton;

    new-instance v3, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;

    invoke-direct {v3, p0, p1}, Lcom/redbox/android/adapter/KioskListAdapter$AddFavClickListener;-><init>(Lcom/redbox/android/adapter/KioskListAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6
.end method

.method public setSelectKioskListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->listenerForKioskSelection:Landroid/view/View$OnClickListener;

    .line 237
    return-void
.end method

.method public update(Ljava/util/HashMap;Z)V
    .locals 2
    .param p1, "inv"    # Ljava/util/HashMap;
    .param p2, "movieMode"    # Z

    .prologue
    .line 77
    iput-object p1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->inv:Ljava/util/HashMap;

    .line 78
    iput-boolean p2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->movieMode:Z

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inv : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public update(Ljava/util/List;IILjava/util/HashMap;Z)V
    .locals 3
    .param p2, "fromServerCount"    # I
    .param p3, "tenPos"    # I
    .param p4, "inv"    # Ljava/util/HashMap;
    .param p5, "movieMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/redbox/android/model/Kiosk;",
            ">;II",
            "Ljava/util/HashMap;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "kk":Ljava/util/List;, "Ljava/util/List<Lcom/redbox/android/model/Kiosk;>;"
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "K = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->count:I

    .line 64
    iput-boolean v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favLabel:Z

    .line 65
    iput-boolean v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->nearby5Label:Z

    .line 66
    iput-boolean v2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->nearby10Label:Z

    .line 67
    iput p2, p0, Lcom/redbox/android/adapter/KioskListAdapter;->fromServerCount:I

    .line 68
    iput p3, p0, Lcom/redbox/android/adapter/KioskListAdapter;->tenPos:I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ten pos: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/redbox/android/adapter/KioskListAdapter;->favIds:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/redbox/android/adapter/KioskListAdapter;->inv:Ljava/util/HashMap;

    .line 72
    iput-boolean p5, p0, Lcom/redbox/android/adapter/KioskListAdapter;->movieMode:Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inv : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; 5pos :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , tenPos :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/redbox/android/adapter/KioskListAdapter;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    return-void
.end method
