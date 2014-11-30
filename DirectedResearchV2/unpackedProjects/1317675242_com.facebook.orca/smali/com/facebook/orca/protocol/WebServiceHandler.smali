.class public Lcom/facebook/orca/protocol/WebServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "WebServiceHandler.java"


# instance fields
.field private final A:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

.field private final B:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

.field private final C:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

.field private final D:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

.field private final E:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

.field private final a:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/BatchRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/auth/AuthenticationManager;

.field private final e:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

.field private final f:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

.field private final g:Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;

.field private final h:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

.field private final i:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

.field private final j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

.field private final k:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

.field private final l:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

.field private final m:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

.field private final n:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

.field private final o:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

.field private final p:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

.field private final q:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

.field private final r:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

.field private final s:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

.field private final t:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

.field private final u:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

.field private final v:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

.field private final w:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

.field private final x:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

.field private final y:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

.field private final z:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Lcom/google/inject/Provider;Lcom/google/inject/Provider;Lcom/facebook/orca/auth/AuthenticationManager;Lcom/facebook/orca/protocol/methods/AuthenticateMethod;Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;Lcom/facebook/orca/protocol/methods/FetchThreadMethod;Lcom/facebook/orca/protocol/methods/GetMeUserMethod;Lcom/facebook/orca/protocol/methods/SendMessageMethod;Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;Lcom/facebook/orca/protocol/methods/FetchMessageMethod;Lcom/facebook/orca/protocol/methods/AddMembersMethod;Lcom/facebook/orca/protocol/methods/CreateThreadMethod;Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UploadShareMethod;Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;Lcom/facebook/orca/protocol/methods/MarkThreadMethod;Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;Lcom/facebook/orca/protocol/methods/SendViaChatHandler;Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/BatchRunner;",
            ">;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
            ">;",
            "Lcom/facebook/orca/auth/AuthenticationManager;",
            "Lcom/facebook/orca/protocol/methods/AuthenticateMethod;",
            "Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/GetMeUserMethod;",
            "Lcom/facebook/orca/protocol/methods/SendMessageMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMessageMethod;",
            "Lcom/facebook/orca/protocol/methods/AddMembersMethod;",
            "Lcom/facebook/orca/protocol/methods/CreateThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;",
            "Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;",
            "Lcom/facebook/orca/protocol/methods/UploadShareMethod;",
            "Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;",
            "Lcom/facebook/orca/protocol/methods/MarkThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;",
            "Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;",
            "Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;",
            "Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;",
            "Lcom/facebook/orca/protocol/methods/SendViaChatHandler;",
            "Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    const-string v2, "WebServiceHandler"

    invoke-direct {p0, v2}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    .line 102
    iput-object p2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    .line 103
    iput-object p3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Lcom/google/inject/Provider;

    .line 104
    iput-object p4, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 105
    iput-object p5, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    .line 106
    iput-object p6, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->f:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    .line 107
    iput-object p7, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->g:Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;

    .line 108
    iput-object p8, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->h:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    .line 109
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->i:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    .line 110
    iput-object p9, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    .line 111
    iput-object p10, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    .line 112
    iput-object p11, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    .line 113
    iput-object p12, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    .line 114
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    .line 115
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->o:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    .line 116
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->p:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    .line 117
    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->q:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    .line 118
    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    .line 119
    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    .line 120
    move-object/from16 v0, p20

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    .line 121
    move-object/from16 v0, p21

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    .line 122
    move-object/from16 v0, p22

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->v:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    .line 123
    move-object/from16 v0, p23

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->w:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    .line 124
    move-object/from16 v0, p24

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->x:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    .line 125
    move-object/from16 v0, p25

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->y:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    .line 126
    move-object/from16 v0, p26

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->z:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    .line 127
    move-object/from16 v0, p27

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->A:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    .line 128
    move-object/from16 v0, p28

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    .line 129
    move-object/from16 v0, p29

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    .line 130
    move-object/from16 v0, p30

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    .line 131
    move-object/from16 v0, p31

    move-object v1, p0

    iput-object v0, v1, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    .line 132
    return-void
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/SendMessageResult;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 379
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    move-object v9, v0

    .line 383
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 384
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    if-ne v2, v3, :cond_3

    .line 388
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-static {v2, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "attachment-upload"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 392
    const-string v1, "{result=attachment-upload:$.id}"

    .line 397
    :goto_0
    new-instance v2, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;

    invoke-direct {v2, p1, v1}, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;-><init>(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    invoke-static {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 405
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->i:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    const-string v2, "{result=send:$.id}"

    invoke-static {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "fetch_sent"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 412
    new-instance v1, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x2

    invoke-direct/range {v1 .. v7}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Ljava/lang/String;JJI)V

    .line 414
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-static {v2, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "fetch"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "send"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 421
    const-string v1, "sendMessage"

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 422
    const-string v1, "send"

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 423
    const-string v1, "fetch_sent"

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchMessageResult;

    .line 424
    const-string v1, "fetch"

    invoke-virtual {v9, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 426
    invoke-virtual {p0}, Lcom/facebook/orca/server/FetchMessageResult;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v4

    .line 430
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->a()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/threads/Message;

    .line 432
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/inject/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    const/4 v2, 0x1

    .line 437
    :goto_1
    if-nez v2, :cond_1

    move-object v5, v10

    .line 442
    :goto_2
    new-instance v1, Lcom/facebook/orca/server/SendMessageResult;

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v4}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/facebook/orca/server/SendMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;JZ)V

    return-object v1

    :cond_1
    move-object v5, v1

    goto :goto_2

    :cond_2
    move v2, v8

    goto :goto_1

    :cond_3
    move-object v1, v10

    goto/16 :goto_0
.end method


# virtual methods
.method protected a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    const-string v1, "passwordCredentials"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/PasswordCredentials;

    .line 140
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 141
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    .line 142
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/AuthenticationManager;->a(Lcom/facebook/orca/auth/FacebookCredentials;)V

    .line 143
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 151
    const-string v1, "accessToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 153
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->f:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    .line 154
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/AuthenticationManager;->a(Lcom/facebook/orca/auth/FacebookCredentials;)V

    .line 155
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 166
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 172
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 178
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "gk"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 183
    const-string v1, "handleLogin"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 186
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/GetMeUserResult;

    .line 187
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetMeUserResult;->a()Lcom/facebook/orca/users/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/auth/AuthenticationManager;->a(Lcom/facebook/orca/users/User;)V

    .line 190
    const-string v2, "appConfig"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 193
    const-string v2, "gk"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 195
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const/4 v3, 0x0

    const-string v4, "appConfig"

    invoke-static {v4, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "gateKeepers"

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 205
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->q:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    const-string v1, "fetchThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadsParams;

    .line 215
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 216
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->g:Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchThreadsResult;

    .line 217
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 226
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 227
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->h:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 229
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 9

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 237
    const-string v2, "fetchThreadParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/server/FetchThreadParams;

    move-object v7, v0

    .line 239
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    move-object v8, v0

    .line 242
    invoke-virtual {v7}, Lcom/facebook/orca/server/FetchThreadParams;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Lcom/facebook/orca/server/MarkThreadParams;

    invoke-virtual {v7}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    const/4 v4, 0x1

    invoke-virtual {v7}, Lcom/facebook/orca/server/FetchThreadParams;->e()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 248
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-static {v2, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "update-last-read"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v1, v7}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "fetch-thread"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/facebook/orca/server/FetchThreadParams;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "update-last-read"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 262
    const-string v1, "fetchThread"

    invoke-virtual {v8, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 265
    const-string v1, "fetch-thread"

    invoke-virtual {v8, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 266
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v1

    return-object v1

    .line 254
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 277
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 278
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "add-members"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 284
    invoke-virtual {v0}, Lcom/facebook/orca/server/AddMembersParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 290
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "add-members"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 297
    const-string v0, "addMembers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 301
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6

    .prologue
    .line 308
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 309
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 310
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v2

    .line 313
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 314
    const/4 v3, 0x0

    .line 315
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-virtual {v2}, Lcom/facebook/orca/threads/Message;->s()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    if-ne v4, v5, :cond_0

    .line 320
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-static {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "attachment-upload"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 324
    const-string v2, "{result=attachment-upload:$.id}"

    .line 329
    :goto_0
    new-instance v3, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;-><init>(Lcom/facebook/orca/server/CreateThreadParams;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->o:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    invoke-static {v0, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "create-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 337
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const-string v2, "{result=create-thread:$.tid}"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 342
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "create-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 349
    const-string v0, "createThread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 350
    const-string v0, "fetch-thread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 353
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method protected j(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 361
    const-string v0, "outgoingMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 362
    const-string v2, "userIdInCanonicalThread"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)Lcom/facebook/orca/server/SendMessageResult;

    move-result-object v1

    .line 368
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    const-string v2, "orca:WebServiceHandler"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/SendMessageResult;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected k(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 456
    const-string v1, "registerPushTokenParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenParams;

    .line 458
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 459
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->p:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 468
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 469
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 470
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 472
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 480
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RemoveMemberParams;

    .line 483
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 484
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "remove-members"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 489
    invoke-virtual {v0}, Lcom/facebook/orca/server/RemoveMemberParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 490
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 495
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "remove-members"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 502
    const-string v0, "removeMember"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 506
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 513
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 514
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 515
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 516
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected o(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 525
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 526
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 527
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5

    .prologue
    .line 535
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 536
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ModifyThreadParams;

    .line 539
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 542
    const/4 v2, 0x0

    .line 543
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->v:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "setThreadName"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 548
    const-string v2, "setThreadName"

    .line 552
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->w:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    const-string v4, "setThreadImage"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 558
    const-string v2, "setThreadImage"

    .line 561
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->A:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    const-string v4, "muteThread"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 567
    const-string v2, "muteThread"

    .line 571
    :cond_2
    new-instance v3, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->h()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 576
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v3, "fetch"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 583
    const-string v0, "modifyThread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 586
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 587
    invoke-static {p0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected q(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 595
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->x:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1

    .prologue
    .line 604
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 611
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 612
    const-string v1, "requestSmsConfirmationCodeParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    .line 615
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 616
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->y:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 624
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 625
    const-string v1, "confirmPhoneParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ConfirmPhoneParams;

    .line 628
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Lcom/google/inject/Provider;

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 631
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->z:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "confirm-phone"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 636
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "get-me-user"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "confirm-phone"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 642
    const-string v0, "confirmPhone"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 644
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetMeUserResult;

    .line 645
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetMeUserResult;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/auth/AuthenticationManager;->a(Lcom/facebook/orca/users/User;)V

    .line 646
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 653
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 656
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 662
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "gk"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 667
    const-string v1, "handleGetAppInfo"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)V

    .line 670
    const-string v1, "appConfig"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/appconfig/AppConfig;

    .line 673
    const-string v1, "gk"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 675
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    const-string v3, "gateKeepers"

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 684
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 685
    const-string v2, "setSettingsParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/SetSettingsParams;

    .line 686
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->a()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
