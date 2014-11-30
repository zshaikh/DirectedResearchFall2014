.class public Lcom/playtika/extensions/data/RuntimeVariablesContext;
.super Lcom/adobe/fre/FREContext;
.source "RuntimeVariablesContext.java"


# static fields
.field public static final INSTANCE:Lcom/playtika/extensions/data/RuntimeVariablesContext;


# instance fields
.field private final stringVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/playtika/extensions/data/RuntimeVariablesContext;

    invoke-direct {v0}, Lcom/playtika/extensions/data/RuntimeVariablesContext;-><init>()V

    sput-object v0, Lcom/playtika/extensions/data/RuntimeVariablesContext;->INSTANCE:Lcom/playtika/extensions/data/RuntimeVariablesContext;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/data/RuntimeVariablesContext;->stringVariables:Ljava/util/HashMap;

    .line 19
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .local v0, "functionsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "getStringVariable"

    new-instance v2, Lcom/playtika/extensions/data/GetRuntimeStringVariableFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/data/GetRuntimeStringVariableFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "setStringVariable"

    new-instance v2, Lcom/playtika/extensions/data/SetRuntimeStringVariableFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/data/SetRuntimeStringVariableFunction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0
.end method

.method public getStringVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/playtika/extensions/data/RuntimeVariablesContext;->stringVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playtika/extensions/data/RuntimeVariablesContext;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setStringVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/playtika/extensions/data/RuntimeVariablesContext;->stringVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
