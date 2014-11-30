.class public Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;
.super Ljava/lang/Object;
.source "Prediction.java"


# instance fields
.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field mIsParsed:Z

.field mIsStreetAddress:Z

.field mLocationAddress:Ljava/lang/String;

.field mLocationName:Ljava/lang/String;

.field public reference:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public types:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mIsParsed:Z

    return-void
.end method

.method private parse()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mIsParsed:Z

    if-eqz v3, :cond_0

    .line 98
    :goto_0
    return-void

    .line 59
    :cond_0
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mIsParsed:Z

    .line 61
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->types:[Ljava/lang/String;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 62
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->types:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 63
    const-string v7, "street_address"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 64
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mIsStreetAddress:Z

    .line 71
    :cond_1
    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mIsStreetAddress:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    array-length v3, v3

    if-le v3, v0, :cond_3

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    aget-object v4, v4, v2

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    aget-object v4, v4, v1

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationName:Ljava/lang/String;

    .line 82
    :goto_2
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    :goto_3
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    array-length v4, v4

    if-ge v0, v4, :cond_6

    .line 86
    if-eqz v1, :cond_5

    move v1, v2

    .line 91
    :goto_4
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    aget-object v4, v4, v0

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 62
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->terms:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction$Term;->value:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationName:Ljava/lang/String;

    move v0, v1

    .line 76
    goto :goto_2

    .line 78
    :cond_4
    iput-object v8, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationName:Ljava/lang/String;

    move v0, v2

    .line 79
    goto :goto_2

    .line 89
    :cond_5
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 94
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 96
    :cond_7
    iput-object v8, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationAddress:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public getLocationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->parse()V

    .line 51
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->parse()V

    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mLocationName:Ljava/lang/String;

    return-object v0
.end method

.method public isStreetAddress()Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->parse()V

    .line 41
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/Prediction;->mIsStreetAddress:Z

    return v0
.end method
