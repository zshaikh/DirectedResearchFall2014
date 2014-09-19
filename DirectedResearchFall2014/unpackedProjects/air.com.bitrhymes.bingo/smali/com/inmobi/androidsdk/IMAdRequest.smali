.class public Lcom/inmobi/androidsdk/IMAdRequest;
.super Ljava/lang/Object;
.source "IMAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/IMAdRequest$EducationType;,
        Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;,
        Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;,
        Lcom/inmobi/androidsdk/IMAdRequest$GenderType;,
        Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/location/Location;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Calendar;

.field private h:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

.field private m:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->a:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->d:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method public addIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    return-void
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->n:I

    return v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->b:Landroid/location/Location;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->l:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    return-object v0
.end method

.method public getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->m:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    return-object v0
.end method

.method public getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->h:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    return-object v0
.end method

.method public getIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 493
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->k:I

    return v0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->p:Ljava/util/Map;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationInquiryAllowed()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->a:Z

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->d:Z

    return v0
.end method

.method public removeIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)V
    .locals 1
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->n:I

    .line 424
    return-void
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->f:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setCurrentLocation(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->b:Landroid/location/Location;

    .line 176
    return-void
.end method

.method public setDateOfBirth(Ljava/util/Calendar;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Calendar;

    .line 268
    return-void
.end method

.method public setDateOfBirth(Ljava/util/Date;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Calendar;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->g:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 291
    return-void
.end method

.method public setEducation(Lcom/inmobi/androidsdk/IMAdRequest$EducationType;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->l:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    .line 386
    return-void
.end method

.method public setEthnicity(Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->m:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    .line 405
    return-void
.end method

.method public setGender(Lcom/inmobi/androidsdk/IMAdRequest$GenderType;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->h:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    .line 310
    return-void
.end method

.method public setIncome(I)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->k:I

    .line 367
    return-void
.end method

.method public setInterests(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->o:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->i:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setLocationInquiryAllowed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->a:Z

    .line 157
    return-void
.end method

.method public setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v2, "-"

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMAdRequest;->c:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->e:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->p:Ljava/util/Map;

    .line 463
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->j:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setTestMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/IMAdRequest;->d:Z

    .line 221
    return-void
.end method
