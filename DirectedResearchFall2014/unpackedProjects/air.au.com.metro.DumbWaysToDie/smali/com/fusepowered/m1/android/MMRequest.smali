.class public final Lcom/fusepowered/m1/android/MMRequest;
.super Ljava/lang/Object;
.source "MMRequest.java"


# static fields
.field public static final EDUCATION_ASSOCIATES:Ljava/lang/String; = "associates"

.field public static final EDUCATION_BACHELORS:Ljava/lang/String; = "bachelors"

.field public static final EDUCATION_DOCTORATE:Ljava/lang/String; = "doctorate"

.field public static final EDUCATION_HIGH_SCHOOL:Ljava/lang/String; = "highschool"

.field public static final EDUCATION_IN_COLLEGE:Ljava/lang/String; = "incollege"

.field public static final EDUCATION_MASTERS:Ljava/lang/String; = "masters"

.field public static final EDUCATION_OTHER:Ljava/lang/String; = "other"

.field public static final EDUCATION_SOME_COLLEGE:Ljava/lang/String; = "somecollege"

.field public static final ETHNICITY_ASIAN:Ljava/lang/String; = "asian"

.field public static final ETHNICITY_BLACK:Ljava/lang/String; = "black"

.field public static final ETHNICITY_HISPANIC:Ljava/lang/String; = "hispanic"

.field public static final ETHNICITY_INDIAN:Ljava/lang/String; = "indian"

.field public static final ETHNICITY_MIDDLE_EASTERN:Ljava/lang/String; = "middleeastern"

.field public static final ETHNICITY_NATIVE_AMERICAN:Ljava/lang/String; = "nativeamerican"

.field public static final ETHNICITY_OTHER:Ljava/lang/String; = "other"

.field public static final ETHNICITY_PACIFIC_ISLANDER:Ljava/lang/String; = "pacificislander"

.field public static final ETHNICITY_WHITE:Ljava/lang/String; = "white"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final GENDER_OTHER:Ljava/lang/String; = "other"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "hsht"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "hswd"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final MARITAL_DIVORCED:Ljava/lang/String; = "divorced"

.field public static final MARITAL_ENGAGED:Ljava/lang/String; = "engaged"

.field public static final MARITAL_MARRIED:Ljava/lang/String; = "married"

.field public static final MARITAL_OTHER:Ljava/lang/String; = "other"

.field public static final MARITAL_RELATIONSHIP:Ljava/lang/String; = "relationship"

.field public static final MARITAL_SINGLE:Ljava/lang/String; = "single"

.field public static final ORIENTATION_BISEXUAL:Ljava/lang/String; = "bisexual"

.field public static final ORIENTATION_GAY:Ljava/lang/String; = "gay"

.field public static final ORIENTATION_OTHER:Ljava/lang/String; = "other"

.field public static final ORIENTATION_STRAIGHT:Ljava/lang/String; = "straight"

.field static location:Landroid/location/Location;


# instance fields
.field age:Ljava/lang/String;

.field children:Ljava/lang/String;

.field education:Ljava/lang/String;

.field ethnicity:Ljava/lang/String;

.field gender:Ljava/lang/String;

.field income:Ljava/lang/String;

.field keywords:Ljava/lang/String;

.field marital:Ljava/lang/String;

.field orientation:Ljava/lang/String;

.field politics:Ljava/lang/String;

.field private values:Ljava/util/Map;
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

.field vendor:Ljava/lang/String;

.field zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->age:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->children:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->education:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->ethnicity:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->gender:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->income:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->keywords:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->marital:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->orientation:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->politics:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->vendor:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->zip:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->values:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public static getUserLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    return-object v0
.end method

.method static insertLocation(Ljava/util/Map;)V
    .locals 4
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
    .local p0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "loc"

    .line 323
    sget-object v0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 325
    const-string v0, "lat"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, "long"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "ha"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "va"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    sget-object v0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const-string v0, "spd"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    sget-object v0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "brg"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_2
    sget-object v0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    const-string v0, "alt"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_3
    const-string v0, "tslr"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, "loc"

    const-string v0, "true"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, "lsrc"

    sget-object v1, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_4
    const-string v0, "loc"

    const-string v0, "false"

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setUserLocation(Landroid/location/Location;)V
    .locals 0
    .param p0, "userLocation"    # Landroid/location/Location;

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    sput-object p0, Lcom/fusepowered/m1/android/MMRequest;->location:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method getUrlParams(Ljava/util/Map;)V
    .locals 4
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
    .line 146
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->age:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "age"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->age:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->children:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 152
    const-string v2, "children"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->children:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->education:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 154
    const-string v2, "education"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->education:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->ethnicity:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 156
    const-string v2, "ethnicity"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->ethnicity:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->gender:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 158
    const-string v2, "gender"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->gender:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_5
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->income:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 160
    const-string v2, "income"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->income:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_6
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->keywords:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 162
    const-string v2, "keywords"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->keywords:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_7
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->marital:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 164
    const-string v2, "marital"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->marital:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_8
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->orientation:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 166
    const-string v2, "orientation"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->orientation:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_9
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->politics:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 168
    const-string v2, "politics"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->politics:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_a
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->vendor:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 170
    const-string v2, "vendor"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->vendor:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_b
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMRequest;->zip:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 172
    const-string v2, "zip"

    iget-object v3, p0, Lcom/fusepowered/m1/android/MMRequest;->zip:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_c
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m1/android/MMRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->age:Ljava/lang/String;

    .line 125
    :goto_0
    return-object p0

    .line 98
    :cond_0
    const-string v0, "children"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->children:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->education:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_2
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->ethnicity:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_3
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->gender:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_4
    const-string v0, "income"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->income:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_5
    const-string v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 109
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->keywords:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_6
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 111
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->marital:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_7
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 113
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->orientation:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_8
    const-string v0, "politics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->politics:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_9
    const-string v0, "vendor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->vendor:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_a
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    iput-object p2, p0, Lcom/fusepowered/m1/android/MMRequest;->zip:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_b
    if-eqz p2, :cond_c

    .line 121
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 123
    :cond_c
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMRequest;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->age:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setChildren(Ljava/lang/String;)V
    .locals 0
    .param p1, "children"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->children:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setEducation(Ljava/lang/String;)V
    .locals 0
    .param p1, "education"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->education:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 0
    .param p1, "ethnicity"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->ethnicity:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->gender:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setIncome(Ljava/lang/String;)V
    .locals 0
    .param p1, "income"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->income:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->keywords:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setMarital(Ljava/lang/String;)V
    .locals 0
    .param p1, "marital"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->marital:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setMetaValues(Ljava/util/Map;)V
    .locals 4
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
    .line 314
    .local p1, "metaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 319
    :cond_0
    return-void

    .line 317
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/m1/android/MMRequest;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fusepowered/m1/android/MMRequest;

    goto :goto_0
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1, "sexualOrientation"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->orientation:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
    .locals 0
    .param p1, "politics"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->politics:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->vendor:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/fusepowered/m1/android/MMRequest;->zip:Ljava/lang/String;

    .line 293
    return-void
.end method
