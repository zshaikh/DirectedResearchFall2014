.class Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;
.super Landroid/os/AsyncTask;
.source "LocationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/location/LocationAsyncTask;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/location/LocationAsyncTask;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/location/LocationAsyncTask;Lcom/facebook/orca/location/LocationAsyncTask$1;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;-><init>(Lcom/facebook/orca/location/LocationAsyncTask;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/location/Location;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/location/Location;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    aget-object v3, p1, v0

    .line 217
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-static {v1}, Lcom/facebook/orca/location/LocationAsyncTask;->b(Lcom/facebook/orca/location/LocationAsyncTask;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 219
    :try_start_0
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "orca:LocationAsyncTask"

    const-string v2, "Failed to geocode"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;->a:Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;

    move-object v1, p0

    :goto_0
    invoke-static {v0, v1}, Lcom/facebook/orca/location/LocationAsyncTask;->a(Lcom/facebook/orca/location/LocationAsyncTask;Landroid/location/Address;)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    check-cast p1, [Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;->a([Landroid/location/Location;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 212
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/location/LocationAsyncTask$GeocodingAsyncTask;->a(Ljava/util/List;)V

    return-void
.end method
