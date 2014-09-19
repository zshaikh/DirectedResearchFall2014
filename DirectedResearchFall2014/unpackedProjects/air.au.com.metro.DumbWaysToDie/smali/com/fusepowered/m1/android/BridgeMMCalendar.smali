.class Lcom/fusepowered/m1/android/BridgeMMCalendar;
.super Lcom/fusepowered/m1/android/MMJSObject;
.source "BridgeMMCalendar.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMJSObject;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fusepowered/m1/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Not supported"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
