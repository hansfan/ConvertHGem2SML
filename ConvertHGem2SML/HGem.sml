* --- Message Definition Begin (From Translator)
AYT: 'S1F1' W /* Name=AreYouThere Dir=3 TID=0 */
.
OLD_H: 'S1F2' /* Name=OnlineData_Host Dir=2 TID=0 */
    <L [0]
     >
.
ABT_S1: 'S1F0' /* Name=AbortTransaction_S1 Dir=3 TID=0 */
.
OLD: 'S1F2' /* Name=OnlineData Dir=1 TID=0 */
    <L [2]
        <A [1] ' ' > /* Name=MDLN Keyword=EquipmentModelType */
        <A [0] > /* Name=SOFTREV Keyword=SoftwareRevision */
     >
.
ROFL: 'S1F15' W /* Name=RequestOffLine Dir=2 TID=0 */
.
RONL: 'S1F17' W /* Name=RequestOnLine Dir=2 TID=0 */
.
ABT_S2: 'S2F0' /* Name=AbortTransaction_S2 Dir=3 TID=0 */
.
ABT_S5: 'S5F0' /* Name=AbortTransaction_S5 Dir=3 TID=0 */
.
ARS: 'S5F1' W /* Name=AlarmReportSend Dir=1 TID=0 */
    <L [3]
        <B [1] 0x01 > /* Name=ALCD Keyword=AlarmCodeByte MappedValue=Personal Safety Clear */
        <U4 [0] > /* Name=ALID Keyword=AlarmID */
        <A [17] 'Sample alarm text' > /* Name=ALTX Keyword=AlarmText MappedValue=Sample alarm text */
     >
.
ABT_S6: 'S6F0' /* Name=AbortTransaction_S6 Dir=3 TID=0 */
.
ERR: 'S6F15' W /* Name=EventReportRequest Dir=2 TID=0 */
    <U1 [0] > /* Name=CEID Keyword=CollectionEventID */
.
IRR: 'S6F19' W /* Name=IndividualReportRequest Dir=2 TID=0 */
    <U4 [1] 14 > /* Name=RPTID Keyword=ReportID */
.
RSD: 'S6F23' W /* Name=RequestSpooledData Dir=2 TID=0 */
    <U1 [1] 0 > /* Name=RSDC Keyword=RequestSpoolData MappedValue=Transmit Spooled Message */
.
ABT_S7: 'S7F0' /* Name=AbortTransaction_S7 Dir=3 TID=0 */
.
PPI: 'S7F1' W /* Name=ProcessProgramLoadInquire Dir=3 TID=0 */
    <L [2]
        <A [0] > /* Name=PPID Keyword=ProcessProgramID */
        <I4 [0] > /* Name=LENGTH Keyword=ServiceProgramLength */
     >
.
PPR: 'S7F5' W /* Name=ProcessProgramRequest Dir=3 TID=0 */
    <A [2] '12' > /* Name=PPID Keyword=ProcessProgramID MappedValue=12 */
.
PPS: 'S7F3' W /* Name=ProcessProgramSend Dir=3 TID=0 */
    <L [2]
        <A [2] '12' > /* Name=PPID Keyword=ProcessProgramID MappedValue=12 */
        <A [17] '12 12 12 12 23 34' > /* Name=PPBODY Keyword=ProcessProgramBody MappedValue=12 12 12 12 23 34 */
     >
.
PPD: 'S7F6' /* Name=ProcessProgramData Dir=3 TID=0 */
    <L [...]
        <A [0] > /* Name=PPID Keyword=ProcessProgramID */
        <B [0] > /* Name=PPBODY Keyword=ProcessProgramBody */
     >
.
RER: 'S7F19' W /* Name=CurrentEPPDRequest Dir=2 TID=0 */
.
ABT_S9: 'S9F0' /* Name=AbortTransaction_S9 Dir=3 TID=0 */
.
UDN: 'S9F1' /* Name=UnrecognizedDeviceID Dir=1 TID=0 */
    <B [0] > /* Name=MHEAD Keyword=MessageHeader */
.
USN: 'S9F3' /* Name=UnrecognizedStreamType Dir=1 TID=0 */
    <B [0] > /* Name=MHEAD Keyword=MessageHeader */
.
UFN: 'S9F5' /* Name=UnrecognizedFunctionType Dir=1 TID=0 */
    <B [0] > /* Name=MHEAD Keyword=MessageHeader */
.
IDN: 'S9F7' /* Name=IllegalData Dir=1 TID=0 */
    <B [0] > /* Name=MHEAD Keyword=MessageHeader */
.
DLN: 'S9F11' /* Name=DataTooLong Dir=1 TID=0 */
    <B [0] > /* Name=MHEAD Keyword=MessageHeader */
.
CTN: 'S9F13' /* Name=ConversationTimeout Dir=1 TID=0 */
    <L [2]
        <A [0] > /* Name=MEXP Keyword=ExpectedMessage */
        <B [0] > /* Name=EDID Keyword=ExpectedDataID */
     >
.
ABT_S10: 'S10F0' /* Name=AbortTransaction_S10 Dir=3 TID=0 */
.
TRN: 'S10F1' W /* Name=TerminalRequest Dir=1 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=TID Keyword=TerminalID MappedValue=Single Or Main Terminal */
        <A [0] > /* TEXT */
     >
.
VTN: 'S10F3' W /* Name=TerminalDisplaySingle Dir=2 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=TID Keyword=TerminalID MappedValue=Single Or Main Terminal */
        <A [0] > /* TEXT */
     >
.
HCS: 'S2F41' W /* Name=HostCommandSend Dir=2 TID=0 */
    <L [2]
        <A [0] > /* RCMD */
        <L [...] /* ParamList */
            <L [2] /* Param */
                <A [0] > /* CPNAME */
                <B [0] > /* CPVAL */
             >
         >
     >
.
LAR_All: 'S5F5' W /* Name=ListAlarmsRequest_All Dir=2 TID=0 */
    <U1 [0] > /* Name=ALID Keyword=AlarmID */
.
LAR: 'S5F5' W /* Name=ListAlarmsRequest Dir=2 TID=0 */
    <U1 [0] > /* Name=ALID Keyword=AlarmID */
.
LAD: 'S5F6' /* Name=ListAlarmData Dir=1 TID=0 */
    <L [...]
        <L [3] /* AlarmData */
            <B [1] 0x01 > /* Name=ALCD Keyword=AlarmCodeByte MappedValue=Personal Safety Clear */
            <U1 [0] > /* Name=ALID Keyword=AlarmID */
            <A [17] 'Sample alarm text' > /* Name=ALTX Keyword=AlarmText MappedValue=Sample alarm text */
         >
     >
.
DPS: 'S7F17' W /* Name=DeleteProcessProgramSend Dir=2 TID=0 */
    <L [...]
        <A [0] > /* Name=PPID Keyword=ProcessProgramID */
     >
.
SSD: 'S1F4' /* Name=SelectedEquipmentStatusData Dir=1 TID=0 */
    <L [...]
        <U1 [1] 5 > /* Name=SV Keyword=StatusVariable */
     >
.
SVNR: 'S1F11' W /* Name=StatusVariableNamelistRequest Dir=2 TID=0 */
    <L [...]
        <U1 [0] > /* Name=SVID Keyword=StatusVariableID */
     >
.
SVNRR: 'S1F12' /* Name=StatusVariableNamelistReply Dir=1 TID=0 */
    <L [...]
        <L [3]
            <U1 [0] > /* Name=SVID Keyword=StatusVariableID */
            <A [0] > /* Name=SVNAME Keyword=StatusVariableName */
            <A [0] > /* Name=UNITS Keyword=UnitsID */
         >
     >
.
ECNR: 'S2F29' W /* Name=EquipmentConstantNamelistRequest Dir=2 TID=0 */
    <L [...]
        <U1 [0] > /* Name=ECID Keyword=EquipmentConstantID */
     >
.
S2F33DR: 'S2F33' W /* Name=DefineReport Dir=2 TID=0 */
    <L [2]
        <U2 [1] 0 > /* DATAID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportTemplate */
                <U2 [0] > /* Name=RPTID Keyword=ReportID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [0] > /* Name=VID Keyword=VariableID */
                 >
             >
         >
     >
.
S2F35LER: 'S2F35' W /* Name=LinkEventReport Dir=2 TID=0 */
    <L [2]
        <U4 [1] 0 > /* DATAID */
        <L [...] /* Name=eventsList Keyword=EventList */
            <L [2] /* Name=eventSetup Keyword=LotStart */
                <U4 [1] 707 > /* Name=CEID Keyword=CollectionEventID */
                <L [...] /* Name=eventReportListTemplate Keyword=EventReportList */
                    <U2 [1] 2 > /* Name=RPTID Keyword=ReportID */
                 >
             >
            <L [2] /* Name=eventSetup Keyword=LotEnd */
                <U4 [1] 708 > /* Name=CEID Keyword=CollectionEventID */
                <L [...] /* Name=eventReportListTemplate Keyword=EventReportList */
                    <U2 [1] 2 > /* Name=RPTID Keyword=ReportID */
                 >
             >
            <L [2] /* Name=eventSetup Keyword=WaferStart */
                <U4 [1] 722 > /* Name=CEID Keyword=CollectionEventID */
                <L [...] /* Name=eventReportListTemplate Keyword=EventReportList */
                    <U2 [1] 1 > /* Name=RPTID Keyword=ReportID */
                 >
             >
            <L [2] /* Name=eventSetup Keyword=WaferEnd */
                <U4 [1] 723 > /* Name=CEID Keyword=CollectionEventID */
                <L [...] /* Name=eventReportListTemplate Keyword=EventReportList */
                    <U2 [1] 1 > /* Name=RPTID Keyword=ReportID */
                 >
             >
         >
     >
.
DERAll: 'S2F37' W /* Name=DisableAllEvents Dir=2 TID=0 */
    <L [2]
        <BOOLEAN [1] False > /* Name=CEED Keyword=CollectionEventEnableFlag MappedValue=Disabled */
        <L [0]
         >
     >
.
S2F37EDER: 'S2F37' W /* Name=EnableDisableEventReport Dir=2 TID=0 */
    <L [2]
        <BOOLEAN [1] True > /* Name=CEED Keyword=CollectionEventEnableFlag MappedValue=Enabled */
        <L [...] /* Name=ceidList Keyword=EventList */
            <U4 [0] > /* Name=CEID Keyword=CollectionEventID */
         >
     >
.
S6F1TDS: 'S6F1' W /* Name=TraceDataSend Dir=1 TID=0 */
    <L [4]
        <U4 [0] > /* Name=TRID Keyword=TraceRequestID */
        <U4 [0] > /* Name=SMPLN Keyword=SampleNumber */
        <A [0] > /* Name=STIME Keyword=SamplingTime */
        <L [...] /* Name=traceDataListTemplate Keyword=TraceDataList */
            <B [0] > /* Name=SV Keyword=StatusVariable */
         >
     >
.
ERD: 'S6F16' /* Name=EventReportData Dir=1 TID=0 */
    <L [3]
        <U1 [1] 0 > /* DATAID */
        <U1 [0] > /* Name=CEID Keyword=CollectionEventID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportDefinition */
                <U1 [0] > /* Name=RPTID Keyword=ReportID */
                <L [...] /* Name=reportVidListTemplate Keyword=VidList */
                    <U1 [0] > /* Name=V Keyword=VariableData */
                 >
             >
         >
     >
.
IRD: 'S6F20' /* Name=IndividualReportData Dir=1 TID=0 */
    <L [...]
        <U1 [0] > /* Name=V Keyword=VariableData */
     >
.
VTN: 'S10F5' W /* Name=TerminalDisplayMultiBlock Dir=2 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=TID Keyword=TerminalID MappedValue=Single Or Main Terminal */
        <L [...]
            <A [0] > /* TEXT */
         >
     >
.
RED: 'S7F20' /* Name=CurrentEPPDData Dir=1 TID=0 */
    <L [...] /* Keyword=PPList */
        <A [3] 'yyy' > /* Name=PPID Keyword=ProcessProgramID MappedValue=yyy */
        <A [3] 'xxx' > /* Name=PPID Keyword=ProcessProgramID MappedValue=xxx */
     >
.
ECN: 'S2F30' /* Name=EquipmentConstantNamelist Dir=1 TID=0 */
    <L [...]
        <L [6] /* EqConstData */
            <U1 [0] > /* Name=ECID Keyword=EquipmentConstantID */
            <A [0] > /* Name=ECNAME Keyword=EquipmentConstantName */
            <B [0] > /* Name=ECMIN Keyword=EquipmentConstantMinValue */
            <B [0] > /* Name=ECMAX Keyword=EquipmentConstantMaxValue */
            <B [0] > /* Name=ECDEF Keyword=EquipmentConstantDefaultValue */
            <A [0] > /* Name=UNITS Keyword=UnitsID */
         >
     >
.
CR: 'S1F13' W /* Name=EstablishCommunicationsRequest Dir=1 TID=0 */
    <L [2]
        <A [0] > /* Name=MDLN Keyword=EquipmentModelType */
        <A [0] > /* Name=SOFTREV Keyword=SoftwareRevision */
     >
.
CR_H: 'S1F13' W /* Name=EstablishCommunicationsRequest_Host Dir=2 TID=0 */
    <L [0]
     >
.
CRA: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Ack Dir=1 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=COMMACK Keyword=AckCode MappedValue=Accepted */
        <L [2]
            <A [0] > /* Name=MDLN Keyword=EquipmentModelType */
            <A [0] > /* Name=SOFTREV Keyword=SoftwareRevision */
         >
     >
.
CRA_H: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Host_Ack Dir=2 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=COMMACK Keyword=AckCode MappedValue=Accepted */
        <L [0]
         >
     >
.
CRA_Nak: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Nak Dir=1 TID=0 */
    <L [2]
        <B [1] 0x01 > /* Name=COMMACK_Nak Keyword=AckCode MappedValue=Denied, Try Again */
        <L [2]
            <A [0] > /* Name=MDLN Keyword=EquipmentModelType */
            <A [0] > /* Name=SOFTREV Keyword=SoftwareRevision */
         >
     >
.
CRA_Nak_H: 'S1F14' /* Name=EstablishCommunicationsRequestAck_Host_Nak Dir=2 TID=0 */
    <L [2]
        <B [1] 0x01 > /* Name=COMMACK_Nak Keyword=AckCode MappedValue=Denied, Try Again */
        <L [2]
            <A [0] > /* Name=MDLN Keyword=EquipmentModelType */
            <A [0] > /* Name=SOFTREV Keyword=SoftwareRevision */
         >
     >
.
OFLA: 'S1F16' /* Name=OffLineAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=OFLACK Keyword=AckCode MappedValue=OK */
.
OFLA_Nak: 'S1F16' /* Name=OffLineAck_Nak Dir=1 TID=0 */
    <B [0] > /* Name=OFLACK_Nak Keyword=AckCode */
.
ONLA: 'S1F18' /* Name=OnLineAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ONLACK Keyword=AckCode MappedValue=OK */
.
ONLA_Nak: 'S1F18' /* Name=OnLineAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ONLACK_Nak Keyword=AckCode MappedValue=Error: On Line Not Allowed */
.
DTA: 'S2F32' /* Name=DateTimeSetAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=TIACK Keyword=AckCode MappedValue=OK */
.
DTA_Nak: 'S2F32' /* Name=DateTimeSetAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=TIACK_Nak Keyword=AckCode MappedValue=Error: Set Time Not Done */
.
DelAllReports: 'S2F33' W /* Name=DefineReport_DeleteAllReports Dir=2 TID=0 */
    <L [2]
        <U4 [1] 0 > /* DATAID */
        <L [0]
         >
     >
.
DelReportType: 'S2F33' W /* Name=DefineReport_DeleteReportType Dir=2 TID=0 */
    <L [2]
        <U2 [1] 0 > /* DATAID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportTemplate */
                <U2 [0] > /* Name=RPTID Keyword=ReportID */
                <L [0] /* Name=vidListTemplate Keyword=VidList */
                 >
             >
         >
     >
.
DRA: 'S2F34' /* Name=DefineReportAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=DRACK Keyword=AckCode MappedValue=Accepted */
.
DRA_Nak: 'S2F34' /* Name=DefineReportAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=DRACK_Nak Keyword=AckCode MappedValue=Denied, Insufficient Space */
.
LERA: 'S2F36' /* Name=LinkEventReportAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=LRACK Keyword=AckCode MappedValue=Accepted */
.
LERA_Nak: 'S2F36' /* Name=LinkEventReportAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=LRACK_Nak Keyword=AckCode MappedValue=Denied. Insufficient Space */
.
ARA: 'S5F2' /* Name=AlarmReportAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC5 Keyword=AckCode MappedValue=Accepted */
.
ARA_Nak: 'S5F2' /* Name=AlarmReportAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC5_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.
EAS: 'S5F3' W /* Name=EnableDisableAlarmSend Dir=2 TID=0 */
    <L [2]
        <B [1] 0x80 > /* Name=ALED Keyword=AlarmEnableCode MappedValue=Enable Alarm */
        <U4 [0] > /* Name=ALID Keyword=AlarmID */
     >
.
EAA: 'S5F4' /* Name=EnableDisableAlarmAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC5 Keyword=AckCode MappedValue=Accepted */
.
EAA_Nak: 'S5F4' /* Name=EnableDisableAlarmAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ACKC5_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.
TDA: 'S6F2' /* Name=TraceDataAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC6 Keyword=AckCode MappedValue=Accepted */
.
TDA_Nak: 'S6F2' /* Name=TraceDataAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC6_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.
MBI: 'S6F5' W /* Name=MultiBlockDataSendInquire_S6 Dir=1 TID=0 */
    <L [2]
        <U1 [1] 0 > /* DATAID */
        <U1 [1] 0 > /* Name=DATALENGTH Keyword=TotalBytesToSend */
     >
.
MBG: 'S6F6' /* Name=MultiBlockGrant_S6_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=GRANT6 Keyword=AckCode MappedValue=Permission Granted */
.
MBG_Nak: 'S6F6' /* Name=MultiBlockGrant_S6_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=GRANT6_Nak Keyword=AckCode MappedValue=Busy, Try Again */
.
ERA: 'S6F12' /* Name=EventReportAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC6 Keyword=AckCode MappedValue=Accepted */
.
ERA_Nak: 'S6F12' /* Name=EventReportAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC6_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.
RSDAC: 'S6F24' /* Name=RequestSpooledDataAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=RSDA Keyword=AckCode MappedValue=OK */
.
RSDAC: 'S6F24' /* Name=RequestSpooledDataAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=RSDA_Nak Keyword=AckCode MappedValue=Denied, Busy Try Later */
.
PPG: 'S7F2' /* Name=ProcessProgramLoadGrant_Ack Dir=3 TID=0 */
    <B [1] 0x00 > /* Name=PPGNT Keyword=procPgmGrantStat MappedValue=OK */
.
PPA: 'S7F4' /* Name=ProcessProgramAck_Ack Dir=3 TID=0 */
    <B [1] 0x00 > /* Name=ACKC7 Keyword=AckCode MappedValue=Accepted */
.
PPA_Nak: 'S7F4' /* Name=ProcessProgramAck_Nak Dir=3 TID=0 */
    <B [1] 0x01 > /* Name=ACKC7_Nak Keyword=AckCode MappedValue=Permission Not Granted */
.
DPA: 'S7F18' /* Name=DeleteProcessProgramAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC7 Keyword=AckCode MappedValue=Accepted */
.
DPA_Nak: 'S7F18' /* Name=DeleteProcessProgramAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ACKC7_Nak Keyword=AckCode MappedValue=Permission Not Granted */
.
TTN: 'S9F9' /* Name=TransactionTimerTimeout Dir=1 TID=0 */
    <B [0] > /* Name=SHEAD Keyword=StoredHeader */
.
TRA: 'S10F2' /* Name=TerminalRequestAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC10 Keyword=AckCode MappedValue=Accepted For Display */
.
TRA_Nak: 'S10F2' /* Name=TerminalRequestAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC10_Nak Keyword=AckCode MappedValue=Message Will Not Be Displayed */
.
VTA: 'S10F4' /* Name=TerminalDisplaySingleAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC10 Keyword=AckCode MappedValue=Accepted For Display */
.
VTA_Nak: 'S10F4' /* Name=TerminalDisplaySingleAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ACKC10_Nak Keyword=AckCode MappedValue=Message Will Not Be Displayed */
.
VMA: 'S10F6' /* Name=TerminalDisplayMultiBlockAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC10 Keyword=AckCode MappedValue=Accepted For Display */
.
VMA_Nak: 'S10F6' /* Name=TerminalDisplayMultiBlockAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ACKC10_Nak Keyword=AckCode MappedValue=Message Will Not Be Displayed */
.
MNN: 'S10F7' /* Name=MultiBlockNotAllowed Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=TID Keyword=TerminalID MappedValue=Single Or Main Terminal */
.
LEAR: 'S5F7' W /* Name=ListEnabledAlarmRequest Dir=2 TID=0 */
.
LEAD: 'S5F8' /* Name=ListEnabledAlarmData Dir=1 TID=0 */
    <L [...]
        <L [3] /* AlarmData */
            <B [1] 0x01 > /* Name=ALCD Keyword=AlarmCodeByte MappedValue=Personal Safety Clear */
            <U1 [0] > /* Name=ALID Keyword=AlarmID */
            <A [17] 'Sample alarm text' > /* Name=ALTX Keyword=AlarmText MappedValue=Sample alarm text */
         >
     >
.
EERA: 'S2F38' /* Name=EnableDisableEventReportAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ERACK Keyword=AckCode MappedValue=OK */
.
EERA_Nak: 'S2F38' /* Name=EnableDisableEventReportAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ERACK_Nak Keyword=AckCode MappedValue=Denied, at least one CEID not exist */
.
FVS: 'S6F9' W /* Name=FormattedVariableSend Dir=1 TID=0 */
    <L [4]
        <B [1] 0x00 > /* Name=PFCD Keyword=PredefinedFormCode */
        <U2 [1] 1 > /* DATAID */
        <A [1] '1' > /* Name=CEID Keyword=CollectionEventID MappedValue=1 */
        <L [...]
            <L [2]
                <A [1] '1' > /* Name=DSID Keyword=DataSetID MappedValue=1 */
                <L [...]
                    <B [1] 0x01 > /* Name=DVVAL Keyword=DataValue */
                 >
             >
         >
     >
.
FVA: 'S6F10' /* Name=FormattedVariableAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC6 Keyword=AckCode MappedValue=Accepted */
.
FVA_Nak: 'S6F10' /* Name=FormattedVariableAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC6_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.

PD: 'S6F9' W /* Name=ProcessData Dir=1 TID=0 */
    <L [4]
        <B [1] 0x01 > /* Name=PFCD Keyword=predefinedFormCode */
        <U2 [1] 1 > /* Name=DATAID */
        <U2 [1] 300 > /* Name=CEID Keyword=eventID */
        <L [1]
            <L [2] /* Name=ProcessingData */
                <A [7] ''HEADER' > /* Name=DSID Keyword=dataSetID MappedValue='HEADER */
                <L [4] /* Name=ProcessingDataList */
                    <A [12] '970326113700' > /* Name=STTIME Keyword=ProcessStartTime MappedValue=970326113700 */
                    <A [12] '970326123200' > /* Name=EMTIME Keyword=ProcessEndTime MappedValue=970326123200 */
                    <A [2] '99' > /* Name=PPID Keyword=RecipeID MappedValue=99 */
                    <A [7] 'SLot001' > /* SLOTID MappedValue=SLot001 */
                 >
             >
         >
     >
.
CR: 'S1F65' W /* Name=ConnectRequest Dir=1 TID=0 */
    <L [2]
        <A [4] 'MDLN' > /* MDLN MappedValue=MDLN */
        <A [7] 'Softrev' > /* Softrev MappedValue=Softrev */
     >
.
CR_H: 'S1F65' W /* Name=ConnectRequestHost Dir=2 TID=0 */
    <L [0]
     >
.
CRA: 'S1F66' /* Name=ConnectRequestAck Dir=1 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Commack */
        <L [2]
            <A [0] > /* MDLN */
            <A [0] > /* SOFTREV */
         >
     >
.
CRA_H: 'S1F66' /* Name=ConnectRequestAck_Host Dir=2 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Commack */
        <L [0]
         >
     >
.
MSR: 'S3F1' W /* Name=MaterialStatusRequest Dir=2 TID=0 */
.
MSD: 'S3F2' /* Name=MaterialStatusData Dir=1 TID=0 */
    <L [2]
        <B [0] > /* Name=MF Keyword=MaterialFormatCode */
        <L [...]
            <L [3]
                <U1 [0] > /* Name=LOC Keyword=MaterialLocation */
                <U1 [0] > /* Name=QUA Keyword=Quantity */
                <A [0] > /* Name=MID Keyword=MaterialID */
             >
         >
     >
.
DDR: 'S6F7' W /* Name=DataTransferRequest Dir=2 TID=0 */
    <U2 [1] 0 > /* DATAID */
.
DDD: 'S6F8' /* Name=DataTransferData Dir=1 TID=0 */
    <L [3]
        <U2 [1] 0 > /* DATAID */
        <A [1] '0' > /* Name=CEID Keyword=CollectionEventID MappedValue=0 */
        <L [...]
            <L [2]
                <A [1] '0' > /* Name=DSID Keyword=DataSetID MappedValue=0 */
                <L [...]
                    <L [2]
                        <A [1] '0' > /* Name=DVNAME Keyword=DataValueName MappedValue=0 */
                        <B [1] 0x00 > /* Name=DVVAL Keyword=DataValue */
                     >
                 >
             >
         >
     >
.
AERS: 'S6F13' W /* Name=AnnotatedEventReportSend Dir=1 TID=0 */
    <L [3]
        <U2 [1] 0 > /* DATAID */
        <U2 [1] 0 > /* Name=CEID Keyword=CollectionEventID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportDefinition */
                <U2 [1] 12 > /* Name=RPTID Keyword=ReportID */
                <L [...] /* Name=reportVidListTemplate Keyword=VidList */
                    <L [2]
                        <A [1] '0' > /* Name=VID Keyword=VariableID MappedValue=0 */
                        <B [1] 0x00 > /* Name=V Keyword=VariableData */
                     >
                 >
             >
         >
     >
.
AERA: 'S6F14' /* Name=AnnotatedEventReportAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC6 Keyword=AckCode MappedValue=Accepted */
.
AERA_Nak: 'S6F14' /* Name=AnnotatedEventReportAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC6_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.
AERR: 'S6F17' W /* Name=AnnotatedEventReportRequest Dir=2 TID=0 */
    <A [1] '0' > /* Name=CEID Keyword=CollectionEventID MappedValue=0 */
.
AERD: 'S6F18' /* Name=AnnotatedEventReportData Dir=1 TID=0 */
    <L [3]
        <U2 [1] 0 > /* DATAID */
        <U2 [1] 0 > /* Name=CEID Keyword=CollectionEventID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportDefinition */
                <U2 [1] 12 > /* Name=RPTID Keyword=ReportID */
                <L [...] /* Name=reportVidListTemplate Keyword=VidList */
                    <L [2]
                        <A [1] '0' > /* Name=VID Keyword=VariableID MappedValue=0 */
                        <B [1] 0x00 > /* Name=V Keyword=VariableData */
                     >
                 >
             >
         >
     >
.
AIRR: 'S6F21' W /* Name=AnnotatedIndividualReportRequest Dir=2 TID=0 */
    <A [1] ' ' > /* Name=RPTID Keyword=ReportID */
.
AIRD: 'S6F22' /* Name=AnnotatedIndividualReportData Dir=1 TID=0 */
    <L [...]
        <L [2]
            <A [1] '0' > /* Name=VID Keyword=VariableID MappedValue=0 */
            <B [1] 0x00 > /* Name=V Keyword=VariableData */
         >
     >
.
BCN: 'S10F9' /* Name=Broadcast Dir=2 TID=0 */
    <I1 [1] 0 > /* TEXT */
.
BCA: 'S10F10' /* Name=BroadcastAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC10 Keyword=AckCode MappedValue=Accepted For Display */
.
BCA_Nak: 'S10F10' /* Name=BroadcastAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=ACKC10_Nak Keyword=AckCode MappedValue=Message Will Not Be Displayed */
.
DVS: 'S6F3' W /* Name=DiscreteVariableDataSend Dir=1 TID=0 */
    <L [3]
        <U2 [1] 0 > /* DATAID */
        <A [1] '0' > /* Name=CEID Keyword=CollectionEventID MappedValue=0 */
        <L [...]
            <L [2]
                <A [1] '0' > /* Name=DSID Keyword=DataSetID MappedValue=0 */
                <L [...]
                    <L [2]
                        <A [1] '0' > /* Name=DVNAME Keyword=DataValueName MappedValue=0 */
                        <B [1] 0x00 > /* Name=DVVAL Keyword=DataValue */
                     >
                 >
             >
         >
     >
.
DVA: 'S6F4' /* Name=DiscreteVariableDataAck_Ack Dir=2 TID=0 */
    <B [1] 0x00 > /* Name=ACKC6 Keyword=AckCode MappedValue=Accepted */
.
DVA_Nak: 'S6F4' /* Name=DiscreteVariableDataAck_Nak Dir=2 TID=0 */
    <B [1] 0x01 > /* Name=ACKC6_Nak Keyword=AckCode MappedValue=Error: Not Accepted */
.
ProceedWithCarrierACK: 'S3F18' /* Name=ProceedWithCarrierACK Dir=1 TID=0 */
    <L [2]
        <U1 [1] 0 > /* CAACK */
        <L [0]
         >
     >
.
ProceedWithCarrier: 'S3F17' W /* Name=ProceedWithCarrier Dir=2 TID=0 */
    <L [5]
        <U4 [1] 1 > /* DATAID */
        <A [18] 'ProceedWithCarrier' > /* CARRIERACTION MappedValue=ProceedWithCarrier */
        <A [10] 'CARRIERID5' > /* CARRIERSPEC MappedValue=CARRIERID5 */
        <U1 [1] 2 > /* PTN */
        <L [0]
         >
     >
.
S3F17CarrierOut: 'S3F17' W /* Name=CarrierOut Dir=3 TID=0 */
    <L [5]
        <U4 [1] 0 > /* Name=DATAID */
        <A [10] 'CarrierOut' > /* Name=CATION MappedValue=CarrierOut */
        <A [6] 'CAS001' > /* Name=CID MappedValue=CAS001 */
        <U1 [0] > /* Name=PTN */
        <L [0]
         >
     >
.
S3F17CancelCarrier: 'S3F17' W /* Name=CancelCarrier Dir=3 TID=0 */
    <L [5]
        <U4 [1] 0 > /* Name=DATAID */
        <A [13] 'CancelCarrier' > /* Name=CATION MappedValue=CancelCarrier */
        <A [6] 'CAS001' > /* CARRIERSPEC MappedValue=CAS001 */
        <U1 [0] > /* Name=PTN */
        <L [0]
         >
     >
.
S3F17CancelCarrierAtPort: 'S3F17' W /* Name=CancelCarrierAtPort Dir=3 TID=0 */
    <L [5]
        <U4 [1] 0 > /* Name=DATAID */
        <A [19] 'CancelCarrierAtPort' > /* Name=CATION MappedValue=CancelCarrierAtPort */
        <A [0] > /* Name=CID */
        <U1 [1] 1 > /* Name=PTN */
        <L [0]
         >
     >
.
CIS: 'S3F25' W /* Name=ChangeInService Dir=2 TID=0 */
    <L [3]
        <A [9] 'InService' > /* PORTACTION MappedValue=InService */
        <A [1] '1' > /* Name=PTN MappedValue=1 */
        <L [0]
         >
     >
.
S3F17ProceedSlotMap: 'S3F17' W /* Name=ProceedSlotMap  TID=0 */
    <L [5]
        <U4 [1] 1 > /* Name=  */
        <A [18] 'ProceedWithCarrier' > /* Name=V MappedValue=ProceedWithCarrier */
        <A [9] 'CAS000000' > /* MappedValue=CAS000000 */
        <U1 [1] 1 >
        <L [4]
            <L [2]
                <A [5] 'Usage' > /* MappedValue=Usage */
                <A [2] 'P_' > /* MappedValue=P_ */
             >
            <L [2]
                <A [7] 'SlotMap' > /* MappedValue=SlotMap */
                <L [0]
                 >
             >
            <L [2]
                <A [7] 'SlotMap' > /* Name=SlotMap MappedValue=SlotMap */
                <L [...]
                    <U1 [1] 3 > /* Name=  */
                 >
             >
            <L [2]
                <A [10] 'ContentMap' > /* Name=ContentMap MappedValue=ContentMap */
                <L [...]
                    <L [2]
                        <A [4] 'Lot1' > /* Name=  MappedValue=Lot1 */
                        <A [10] 'Substrate1' > /* Name=  MappedValue=Substrate1 */
                     >
                 >
             >
         >
     >
.
S3F17CancelCarrierOut: 'S3F17' W /* Name=CancelCarrierOut Dir=3 TID=0 */
    <L [5]
        <U4 [1] 0 > /* Name=DATAID */
        <A [16] 'CancelCarrierOut' > /* Name=CATION MappedValue=CancelCarrierOut */
        <A [6] 'CAS001' > /* Name=CID MappedValue=CAS001 */
        <U1 [0] > /* Name=PTN */
        <L [0]
         >
     >
.
ProceedWithCarrierACK_Nak: 'S3F18' /* Name=ProceedWithCarrierACK_Nak Dir=1 TID=0 */
    <L [2]
        <U1 [1] 0 > /* CAACK */
        <L [...]
            <L [2]
                <U4 [1] 0 > /* ERRCODE */
                <A [3] '...' > /* ERRTEXT MappedValue=... */
             >
         >
     >
.
S3F17CarrierRelease: 'S3F17' W /* Name=CarrierRelease Dir=3 TID=0 */
    <L [5]
        <U4 [1] 0 > /* Name=DATAID */
        <A [14] 'CarrierRelease' > /* Name=CATION MappedValue=CarrierRelease */
        <A [6] 'CAS001' > /* Name=CID MappedValue=CAS001 */
        <U1 [0] > /* Name=PTN */
        <L [0]
         >
     >
.
CR: 'S1F67' W /* Name=MODECHANGE-DUAL Dir=3 TID=0 */
    <I1 [1] 3 > /* Name=  */
.
CRA: 'S1F68' /* Name=MODECHANGE-ACK Dir=1 TID=0 */
    <I1 [0] > /* Name=  */
.
S1F5QueryReticleID: 'S1F5' W /* Name=QueryReticleID Dir=2 TID=0 */
    <B [1] 0x04 > /* Name=V */
.
S1F6S1F6: 'S1F6' /* Name=S1F6  TID=0 */
    <L [2]
        <B [1] 0x04 >
        <L [12]
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] 'R088003A0001                                                    ' > /* MappedValue=R088003A0001                                                     */
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
            <A [64] '                                                                ' >
         >
     >
.
S1F3Port1State: 'S1F3' W /* Name=Port1State Dir=2 TID=0 */
    <L [...]
        <U4 [1] 2100 > /* Name=SVID Keyword=StatusVariableID */
        <U4 [1] 2120 > /* Name=SVID Keyword=StatusVariableID */
     >
.
SSR: 'S1F3' W /* Name=SelectedEquipmentStatusRequest Dir=2 TID=0 */
    <L [...]
        <U4 [1] 67108865 > /* Name=SVID Keyword=StatusVariableID */
     >
.
S1F3SV_Query_All: 'S1F3' W /* Name=SV_Query_All Dir=2 TID=0 */
    <L [...]
     >
.
S1F3QuerySubState: 'S1F3' W /* Name=QuerySubState Dir=2 TID=0 */
    <L [1]
        <U4 [1] 8 > /* VID */
     >
.
ECR: 'S2F13' W /* Name=EquipmentConstantRequest Dir=2 TID=0 */
    <L [...] /* ECIDList */
        <U1 [0] > /* Name=ECID Keyword=EquipmentConstantID */
     >
.
ECD: 'S2F14' /* Name=EquipmentConstantData Dir=1 TID=0 */
    <L [...] /* ECVList */
        <B [0] > /* Name=ECV Keyword=EquipmentConstantValue */
     >
.
ECS: 'S2F15' W /* Name=NewEquipmentConstantSend Dir=2 TID=0 */
    <L [...] /* ECVList */
        <L [2] /* ECVPair */
            <U4 [1] 84 > /* Name=ECID Keyword=InitCommState MappedValue=InitCommState */
            <U2 [1] 1 > /* Name=ECV Keyword=EquipmentConstantValue MappedValue=Enabled */
         >
     >
.
ECA: 'S2F16' /* Name=EquipmentConstantAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=EAC Keyword=AckCode MappedValue=OK */
.
ECA_Nak: 'S2F16' /* Name=EquipmentConstantAck_Nak Dir=1 TID=0 */
    <B [1] 0x01 > /* Name=EAC_Nak Keyword=AckCode MappedValue=Denied, At Least One Constant Does Not Exist */
.
DTR: 'S2F17' W /* Name=DateTimeRequest Dir=3 TID=0 */
.
DTD: 'S2F18' /* Name=DateTimeData Dir=3 TID=0 */
    <A [0] > /* Name=TIME Keyword=TimeOfDay */
.
TIA: 'S2F24' /* Name=TraceInitializeAck_Ack Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=TIAACK Keyword=AckCode MappedValue=OK */
.
TIA_Nak: 'S2F24' /* Name=TraceInitializeAck_Nak Dir=1 TID=0 */
    <B [0] > /* Name=TIAACK_Nak Keyword=AckCode */
.
LDR: 'S2F25' W /* Name=LoopBackDiagnosticRequest Dir=3 TID=0 */
    <B [5] 0x01 0x05 0x06 0x07 0x08 > /* Name=ABS Keyword=AnyBinaryString */
.
LDD: 'S2F26' /* Name=LoopBackDiagnosticData Dir=3 TID=0 */
    <B [1] 0x00 > /* Name=ABS Keyword=AnyBinaryString */
.
DTSR: 'S2F31' W /* Name=DateTimeSetRequest Dir=3 TID=0 */
    <A [16] '2008030414400000' > /* DATATIME MappedValue=2008030414400000 */
.
DMBI: 'S2F39' W /* Name=MultiBlockInquire_S2 Dir=2 TID=0 */
    <L [2]
        <U1 [1] 0 > /* DATAID */
        <U1 [1] 0 > /* Name=DATALENGTH Keyword=TotalBytesToSend */
     >
.
RSSF: 'S2F43' W /* Name=ResetSpoolingStreamsAndFunctions Dir=2 TID=0 */
    <L [...]
        <L [2] /* Streams */
            <U1 [0] > /* Name=STRID Keyword=StreamID */
            <L [...] /* Functions */
                <U1 [0] > /* Name=FCNID Keyword=FunctionID */
             >
         >
     >
.
DisableSpoolingForFunctions: 'S2F43' W /* Name=ResetSpoolingStreamsAndFunctions_DisableFunctions Dir=2 TID=0 */
    <L [...]
        <L [2] /* Streams */
            <U1 [0] > /* Name=STRID Keyword=StreamID */
            <L [0] /* Functions */
             >
         >
     >
.
DisableSpoolingForAllStreams: 'S2F43' W /* Name=ResetSpoolingStreamsAndFunctions_DisableStreams Dir=2 TID=0 */
    <L [0] /* Name=Streams */
     >
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes Dir=2 TID=0 */
    <L [2]
        <U1 [1] 0 > /* DATAID */
        <L [...]
            <L [2]
                <U1 [0] > /* Name=VID Keyword=VariableID */
                <L [...]
                    <L [2]
                        <B [0] > /* LIMITID */
                        <L [...]
                            <U1 [0] > /* UPPERDB */
                            <U1 [0] > /* LOWERDB */
                         >
                     >
                 >
             >
         >
     >
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes_ALimitUndefined Dir=2 TID=0 */
    <L [2]
        <U1 [1] 0 > /* DATAID */
        <L [...]
            <L [2]
                <U1 [0] > /* Name=VID Keyword=VariableID */
                <L [...]
                    <L [2]
                        <B [0] > /* LIMITID */
                        <L [0]
                         >
                     >
                 >
             >
         >
     >
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes_AllVIDUndefined Dir=2 TID=0 */
    <L [2]
        <U1 [1] 0 > /* DATAID */
        <L [0]
         >
     >
.
DVLA: 'S2F45' W /* Name=DefineVariableLimitAttributes_AVidUndefined Dir=2 TID=0 */
    <L [2]
        <U1 [1] 0 > /* DATAID */
        <L [...]
            <L [2]
                <U1 [0] > /* Name=VID Keyword=VariableID */
                <L [0]
                 >
             >
         >
     >
.
VLAR: 'S2F47' W /* Name=VariableLimitAttributeRequest Dir=2 TID=0 */
    <L [...]
        <U1 [0] > /* Name=VID Keyword=VariableID */
     >
.
S2F47VariableLimitAttributeRequest_ALL: 'S2F47' W /* Name=VariableLimitAttributeRequest_ALL Dir=2 TID=0 */
    <L [0]
     >
.
RSA: 'S2F44' /* Name=ResetSpoolingAck_Ack Dir=1 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=RSPACK Keyword=AckCode MappedValue=OK */
        <L [0]
         >
     >
.
RSA_Nak: 'S2F44' /* Name=ResetSpoolingAck_Nak Dir=1 TID=0 */
    <L [2]
        <B [1] 0x01 > /* Name=RSPACK_Nak Keyword=AckCode MappedValue=Error: Spooling Setup Rejected */
        <L [...]
            <L [3]
                <U1 [1] 0 > /* Name=STRID Keyword=StreamID */
                <B [1] 0x01 > /* Name=STRACK_Nak Keyword=AckCode MappedValue=Spooling Not Allowed */
                <L [...]
                    <U1 [1] 0 > /* Name=FCNID Keyword=FunctionID */
                 >
             >
         >
     >
.
VLAA: 'S2F46' /* Name=VariableLimitAttributeAck_Ack Dir=1 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=VLAACK Keyword=AckCode MappedValue=OK */
        <L [0]
         >
     >
.
VLAA_Nak: 'S2F46' /* Name=VariableLimitAttributeAck_Nak Dir=1 TID=0 */
    <L [2]
        <B [1] 0x01 > /* Name=VLAACK_Nak Keyword=AckCode MappedValue=Error: Limit Attribute Definition Error */
        <L [...]
            <L [3]
                <U1 [0] > /* Name=VID Keyword=VariableID */
                <B [1] 0x01 > /* Name=LVACK_Nak Keyword=AckCode MappedValue=Error: Variable Does Not Exist */
                <L [...]
                    <B [0] > /* LIMITID */
                    <B [1] 0x01 > /* Name=LIMITACK_Nak Keyword=AckCode MappedValue=Error: Limit ID Does Not Exist */
                 >
             >
         >
     >
.
VLAS: 'S2F48' /* Name=VariableLimitAttributesSend Dir=1 TID=0 */
    <L [...]
        <L [2]
            <U1 [1] 0 > /* Name=VID Keyword=VariableID */
            <L [...]
                <A [3] 'sec' > /* Name=UNITS Keyword=UnitsID MappedValue=sec */
                <U1 [1] 0 > /* LIMITMIN */
                <U1 [1] 100 > /* LIMITMAX */
                <L [...]
                    <L [3]
                        <B [1] 0x01 > /* LIMITID */
                        <U1 [1] 1 > /* UPPERDB */
                        <U1 [1] 5 > /* LOWERDB */
                     >
                 >
             >
         >
     >
.
ECsSet: 'S2F15' W /* Name=ECsSet Dir=2 TID=0 */
    <L [...] /* ECVList */
        <L [2] /* ECVPair */
            <U4 [1] 634 > /* Name=EnableSpool */
            <U1 [1] 0 > /* Name=ECV Keyword=EquipmentConstantValue */
         >
     >
.
ECNR: 'S2F29' W /* Name=EquipmentConstantNamelistRequest_All Dir=2 TID=0 */
    <L [...]
     >
.
IRR14: 'S6F19' W /* Name=IndividualReportRequest_RPT14 Dir=2 TID=0 */
    <U4 [1] 14 > /* Name=RPTID Keyword=ReportID */
.
IRR8: 'S6F19' W /* Name=IndividualReportRequest_RPT8 Dir=2 TID=0 */
    <U4 [1] 8 > /* Name=RPTID Keyword=ReportID */
.
DelAllReports: 'S2F33' W /* Name=DefineReport_DefineReport_AFM Dir=2 TID=0 */
    <L [2]
        <U2 [1] 0 > /* DATAID */
        <L [6]
            <L [2]
                <U2 [1] 10 >
                <L [5]
                    <U4 [1] 87500 >
                    <U4 [1] 87504 >
                    <U4 [1] 87600 >
                    <U4 [1] 87701 >
                    <U4 [1] 87702 >
                 >
             >
            <L [2]
                <U2 [1] 20 >
                <L [5]
                    <U4 [1] 87500 >
                    <U4 [1] 87600 >
                    <U4 [1] 87701 >
                    <U4 [1] 87702 >
                    <U4 [1] 87607 >
                 >
             >
            <L [2]
                <U2 [1] 30 >
                <L [1]
                    <U4 [1] 40500 >
                 >
             >
            <L [2]
                <U2 [1] 40 >
                <L [1]
                    <U4 [1] 94500 >
                 >
             >
            <L [2]
                <U2 [1] 50 >
                <L [3]
                    <U4 [1] 90500 >
                    <U4 [1] 90501 >
                    <U4 [1] 90502 >
                 >
             >
            <L [2]
                <U2 [1] 60 >
                <L [1]
                    <U4 [1] 40508 >
                 >
             >
         >
     >
.
S2F35LER: 'S2F35' W /* Name=LinkEventReport_DefineLink_AFM Dir=2 TID=0 */
    <L [2]
        <U4 [1] 0 > /* DATAID */
        <L [...] /* Name=eventsList Keyword=EventList */
            <L [2]
                <U4 [1] 87336 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 87337 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 87338 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 87339 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 87510 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 87514 >
                <L [1]
                    <U2 [1] 20 >
                 >
             >
            <L [2]
                <U4 [1] 90002 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
            <L [2]
                <U4 [1] 90005 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
            <L [2]
                <U4 [1] 90011 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
            <L [2]
                <U4 [1] 90012 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
            <L [2]
                <U4 [1] 94005 >
                <L [1]
                    <U2 [1] 40 >
                 >
             >
            <L [2]
                <U4 [1] 94010 >
                <L [1]
                    <U2 [1] 40 >
                 >
             >
            <L [2]
                <U4 [1] 40004 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 40006 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 40008 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 40010 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 100 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 101 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 102 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 103 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 104 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 105 >
                <L [1]
                    <U2 [1] 10 >
                 >
             >
            <L [2]
                <U4 [1] 150 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 151 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 155 >
                <L [1]
                    <U2 [1] 60 >
                 >
             >
            <L [2]
                <U4 [1] 156 >
                <L [1]
                    <U2 [1] 30 >
                 >
             >
            <L [2]
                <U4 [1] 200 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
            <L [2]
                <U4 [1] 201 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
            <L [2]
                <U4 [1] 203 >
                <L [1]
                    <U2 [1] 50 >
                 >
             >
         >
     >
.
PROCEED_CAR_FULL: 'S3F17' W /* Name=PROCEED_CAR_FULL Dir=3 TID=0 */
    <L [5]
        <U4 [1] 1 > /*  DATAID */
        <A [18] 'ProceedWithCarrier' > /* MappedValue=ProceedWithCarrier */
        <A [9] 'NFF002863' > /*  CARRIERID Here MappedValue=NFF002863 */
        <U1 [1] 2 > /*  1: Port A, 2: Port B */
        <L [5]
            <L [2]
                <A [8] 'Capacity' > /* MappedValue=Capacity */
                <U1 [1] 25 >
             >
            <L [2]
                <A [14] 'SubstrateCount' > /* MappedValue=SubstrateCount */
                <U1 [1] 9 >
             >
            <L [2]
                <A [5] 'Usage' > /* MappedValue=Usage */
                <A [7] 'PRODUCT' > /* MappedValue=PRODUCT */
             >
            <L [2]
                <A [7] 'SlotMap' > /* MappedValue=SlotMap */
                <L [25]
                    <U1 [1] 1 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 3 >
                    <U1 [1] 1 >
                    <U1 [1] 3 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                    <U1 [1] 1 >
                 >
             >
            <L [2]
                <A [10] 'ContentMap' > /* MappedValue=ContentMap */
                <L [25]
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '1' > /*  Wafer ID Here MappedValue=1 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '2' > /*  Wafer ID Here MappedValue=2 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '3' > /*  Wafer ID Here MappedValue=3 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '4' > /*  Wafer ID Here MappedValue=4 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '5' > /*  Wafer ID Here MappedValue=5 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '6' > /*  Wafer ID Here MappedValue=6 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '7' > /*  Wafer ID Here MappedValue=7 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '8' > /*  Wafer ID Here MappedValue=8 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [1] '9' > /*  Wafer ID Here MappedValue=9 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '10' > /*  Wafer ID Here MappedValue=10 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '11' > /*  Wafer ID Here MappedValue=11 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '12' > /*  Wafer ID Here MappedValue=12 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '13' > /*  Wafer ID Here MappedValue=13 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '14' > /*  Wafer ID Here MappedValue=14 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '15' > /*  Wafer ID Here MappedValue=15 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '16' > /*  Wafer ID Here MappedValue=16 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '17' > /*  Wafer ID Here MappedValue=17 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '18' > /*  Wafer ID Here MappedValue=18 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '19' > /*  Wafer ID Here MappedValue=19 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '20' > /*  Wafer ID Here MappedValue=20 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '21' > /*  Wafer ID Here MappedValue=21 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '22' > /*  Wafer ID Here MappedValue=22 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '23' > /*  Wafer ID Here MappedValue=23 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '24' > /*  Wafer ID Here MappedValue=24 */
                     >
                    <L [2]
                        <A [11] 'Lot ID Test' > /*  Lot ID Here MappedValue=Lot ID Test */
                        <A [2] '25' > /*  Wafer ID Here MappedValue=25 */
                     >
                 >
             >
         >
     >
.
GET_ALL_CARRIER: 'S14F1' W /* Name=GET_ALL_CARRIER Dir=3 TID=0 */
    <L [5]
        <A [0] > /*  OBJSPEC */
        <A [7] 'Carrier' > /*  OBJTYPE MappedValue=Carrier */
        <L [0] /*  OBJID List */
         >
        <L [0]
         >
        <L [0] /*  ATTRID List */
         >
     >
.
GET_ALL_CJ: 'S14F1' W /* Name=GET_ALL_CJ Dir=3 TID=0 */
    <L [5]
        <A [0] > /*  OBJSPEC */
        <A [10] 'ControlJob' > /*  OBJTYPE MappedValue=ControlJob */
        <L [0]
         >
        <L [0]
         >
        <L [0]
         >
     >
.
GET_ALL_PJ: 'S14F1' W /* Name=GET_ALL_PJ Dir=3 TID=0 */
    <L [5]
        <A [0] > /*  OBJSPEC */
        <A [10] 'ProcessJob' > /*  OBJTYPE MappedValue=ProcessJob */
        <L [0]
         >
        <L [0]
         >
        <L [0]
         >
     >
.
GET_ALL_SUBS_LOC: 'S14F1' W /* Name=GET_ALL_SUBS_LOC Dir=3 TID=0 */
    <L [5]
        <A [0] > /*  OBJSPEC */
        <A [8] 'SubstLoc' > /*  OBJTYPE MappedValue=SubstLoc */
        <L [0]
         >
        <L [0]
         >
        <L [0]
         >
     >
.
GET_ALL_SUBSTRATE: 'S14F1' W /* Name=GET_ALL_SUBSTRATE Dir=3 TID=0 */
    <L [5]
        <A [0] > /*  OBJSPEC */
        <A [9] 'Substrate' > /*  OBJTYPE MappedValue=Substrate */
        <L [0]
         >
        <L [0]
         >
        <L [0]
         >
     >
.
GET_Partial_PJ: 'S14F1' W /* Name=GET_Partial_PJ Dir=3 TID=0 */
    <L [5]
        <A [0] > /*  OBJSPEC */
        <A [10] 'ProcessJob' > /*  OBJTYPE MappedValue=ProcessJob */
        <L [0]
         >
        <L [0]
         >
        <L [2]
            <A [5] 'ObjID' > /* Name=AttID1 MappedValue=ObjID */
            <A [10] 'PRJobState' > /* Name=AttID2 MappedValue=PRJobState */
         >
     >
.
CJ_CREATE: 'S14F9' W /* Name=CJ_CREATE Dir=2 TID=0 */
    <L [3]
        <A [13] 'JobSupervisor' > /* Name=OBJSPEC MappedValue=JobSupervisor */
        <A [10] 'ControlJob' > /* Name=OBJTYPE MappedValue=ControlJob */
        <L [...]
            <L [2]
                <A [5] 'ObjID' > /* Name=ATTRID1 MappedValue=ObjID */
                <A [0] > /* ATTRDATA1 */
             >
            <L [2]
                <A [18] 'ProcessingCtrlSpec' > /* Name=ATTRID2 MappedValue=ProcessingCtrlSpec */
                <L [...]
                 >
             >
            <L [2]
                <A [11] 'StartMethod' > /* Name=ATTRID6 MappedValue=StartMethod */
                <BOOLEAN [1] True > /* Name=ATTRDATA6 */
             >
            <L [2]
                <A [16] 'CarrierInputSpec' > /* Name=ATTRID4 MappedValue=CarrierInputSpec */
                <L [...]
                 >
             >
            <L [2]
                <A [16] 'ProcessOrderMgmt' > /* Name=ATTRID6 MappedValue=ProcessOrderMgmt */
                <U1 [1] 3 > /* Name=ATTRDATA6 */
             >
            <L [2]
                <A [11] 'MtrlOutSpec' > /* Name=ATTRID5 MappedValue=MtrlOutSpec */
                <L [0]
                 >
             >
         >
     >
.
CONTROL_JOB_CREATE: 'S14F9' W /* Name=CONTROL_JOB_CREATE Dir=3 TID=0 */
    <L [3]
        <A [7] 'TESTJOB' > /*  OBJSPEC MappedValue=TESTJOB */
        <A [10] 'ControlJob' > /*  OBJTYPE MappedValue=ControlJob */
        <L [6]
            <L [2]
                <A [5] 'ObjID' > /* MappedValue=ObjID */
                <A [11] 'ControlJob1' > /*  The name appear on Control Job ID list MappedValue=ControlJob1 */
             >
            <L [2]
                <A [18] 'ProcessingCtrlSpec' > /* MappedValue=ProcessingCtrlSpec */
                <L [1]
                    <L [3]
                        <A [10] 'Multi_PJ_1' > /*  PRJob ID Here MappedValue=Multi_PJ_1 */
                        <L [0]
                         >
                        <L [0]
                         >
                     >
                 >
             >
            <L [2]
                <A [16] 'ProcessOrderMgmt' > /* MappedValue=ProcessOrderMgmt */
                <U1 [1] 3 > /*  1: ARRIVAL, 2: OPTIMIZE,3: LIST  */
             >
            <L [2]
                <A [11] 'StartMethod' > /* MappedValue=StartMethod */
                <BOOLEAN [1] False > /*  FALSE: Remote Start, TRUE: Auto */
             >
            <L [2]
                <A [16] 'CarrierInputSpec' > /* MappedValue=CarrierInputSpec */
                <L [1]
                    <A [9] 'NFF002886' > /*  Carrier ID Here ? MappedValue=NFF002886 */
                 >
             >
            <L [2]
                <A [11] 'MtrlOutSpec' > /* MappedValue=MtrlOutSpec */
                <L [0]
                 >
             >
         >
     >
.
CJ_CREATE_ACK: 'S14F10' /* Name=CJ_CREATE_ACK Dir=3 TID=0 */
    <L [3]
        <A [9] 'Equipment' > /* Name=OBJSPEC MappedValue=Equipment */
        <L [0]
         >
        <L [...]
            <U1 [1] 0 > /* OBJACK */
            <L [0]
             >
         >
     >
.
CONTROL_JOB_DELETE: 'S14F11' W /* Name=CONTROL_JOB_DELETE Dir=3 TID=0 */
    <L [2]
        <A [7] 'TESTJOB' > /*  OBJSPEC MappedValue=TESTJOB */
        <L [1]
            <L [2]
                <A [5] 'OBJID' > /*  OBJID MappedValue=OBJID */
                <A [11] 'ControlJob1' > /*  The name appear on Control Job ID list MappedValue=ControlJob1 */
             >
         >
     >
.
PROCESS_JOB_ABORT: 'S16F5' W /* Name=PROCESS_JOB_ABORT Dir=3 TID=0 */
    <L [4]
        <U2 [1] 1 >
        <A [12] 'MichaelTest1' > /*  PRJob Name Here MappedValue=MichaelTest1 */
        <A [5] 'ABORT' > /* MappedValue=ABORT */
        <L [0]
         >
     >
.
PROCESS_JOB_CANCEL: 'S16F5' W /* Name=PROCESS_JOB_CANCEL Dir=3 TID=0 */
    <L [4]
        <U2 [1] 1 >
        <A [12] 'MichaelTest1' > /* Name=PRJobID MappedValue=MichaelTest1 */
        <A [6] 'CANCEL' > /* Name=cmd MappedValue=CANCEL */
        <L [0]
         >
     >
.
PROCESS_JOB_PAUSE: 'S16F5' W /* Name=PROCESS_JOB_PAUSE Dir=3 TID=0 */
    <L [4]
        <U2 [1] 1 >
        <A [12] 'MichaelTest1' > /* Name=PRJobID MappedValue=MichaelTest1 */
        <A [5] 'PAUSE' > /* MappedValue=PAUSE */
        <L [0]
         >
     >
.
PROCESS_JOB_PROMOTE: 'S16F5' W /* Name=PROCESS_JOB_PROMOTE Dir=3 TID=0 */
    <L [4]
        <U2 [1] 1 >
        <A [12] 'MichaelTest1' > /*  PRJob Name Here MappedValue=MichaelTest1 */
        <A [7] 'PROMOTE' > /* MappedValue=PROMOTE */
        <L [0]
         >
     >
.
PROCESS_JOB_RESUME: 'S16F5' W /* Name=PROCESS_JOB_RESUME Dir=3 TID=0 */
    <L [4]
        <U2 [1] 1 >
        <A [12] 'MichaelTest1' > /*  PRJob Name Here MappedValue=MichaelTest1 */
        <A [6] 'RESUME' > /* MappedValue=RESUME */
        <L [0]
         >
     >
.
PROCESS_JOB_START: 'S16F5' W /* Name=PROCESS_JOB_START Dir=3 TID=0 */
    <L [4]
        <U4 [1] 1 >
        <A [10] 'Multi_PJ_2' > /*  PRJob Name Here MappedValue=Multi_PJ_2 */
        <A [12] 'STARTPROCESS' > /* MappedValue=STARTPROCESS */
        <L [0]
         >
     >
.
PROCESS_JOB_STOP: 'S16F5' W /* Name=PROCESS_JOB_STOP Dir=3 TID=0 */
    <L [4]
        <U4 [1] 1 >
        <A [10] 'Multi_PJ_2' > /*  PRJob Name Here MappedValue=Multi_PJ_2 */
        <A [4] 'STOP' > /* MappedValue=STOP */
        <L [0]
         >
     >
.
S16F7ProcessJobAlertNotify: 'S16F7' W /* Name=ProcessJobAlertNotify Dir=3 TID=0 */
    <L [...]
        <A [16] '2012112215273717' > /* MappedValue=2012112215273717 MappedValue=2012112215273717 */
        <A [28] 'ITTEST.01-201211221525540114' > /* MappedValue=ITTEST.01-201211221525540114 MappedValue=ITTEST.01-201211221525540114 */
        <U1 [1] 2 >
        <L [...]
            <BOOLEAN [1] True >
            <L [...]
             >
         >
     >
.
S16F8ProcessJobAlertConfirm: 'S16F8' W /* Name=ProcessJobAlertConfirm Dir=3 TID=0 */
.
S16F9Process_JobEventNotify: 'S16F9' W /* Name=Process JobEventNotify Dir=3 TID=0 */
    <L [...]
        <U1 [1] 2 >
        <A [16] '2012112215273717' > /* MappedValue=2012112215273717 MappedValue=2012112215273717 */
        <A [28] 'ITTEST.01-201211221525540114' > /* MappedValue=ITTEST.01-201211221525540114 MappedValue=ITTEST.01-201211221525540114 */
        <L [...]
         >
     >
.
S16F10ProcessJobEventConfirm: 'S16F10' W /* Name=ProcessJobEventConfirm Dir=3 TID=0 */
.
E40_Create_PJ_P1: 'S16F11' W /* Name=E40_Create_PJ1_P1 Dir=3 TID=0 */
    <L [7]
        <U2 [1] 1 > /* Name=DATAID */
        <A [9] 'Port2-PJ1' > /* Name=PJID MappedValue=Port2-PJ1 */
        <B [1] 0x0D >
        <L [1]
            <L [2]
                <A [7] 'CID0001' > /* Name=CARRIERID MappedValue=CID0001 */
                <L [2]
                    <U1 [1] 1 > /* Name=slotid */
                    <U1 [1] 2 > /* Name=slotid */
                 >
             >
         >
        <L [3]
            <U1 [1] 1 >
            <A [0] > /* Name=PPID */
            <L [0]
             >
         >
        <BOOLEAN [1] True >
        <L [0]
         >
     >
.
PJ_SINGLE_CREATE: 'S16F11' W /* Name=PJ_SINGLE_CREATE Dir=3 TID=0 */
.
PJ_MULTI_CREATE: 'S16F15' W /* Name=PJ_MULTI_CREATE Dir=2 TID=0 */
    <L [2]
        <U2 [1] 0 > /* Name=DATAID */
        <L [...]
         >
     >
.
PROCESS_JOB_CREATE_MULTI: 'S16F15' W /* Name=PROCESS_JOB_CREATE_MULTI Dir=3 TID=0 */
    <L [2]
        <U2 [1] 1 > /* Name=DATAID */
        <L [1]
            <L [6]
                <A [10] 'Multi_PJ_1' > /*  PRJOBID MappedValue=Multi_PJ_1 */
                <B [1] 0x0D > /*  13: Carrier, 14: Substrate */
                <L [1]
                    <L [2]
                        <A [9] 'NFF002886' > /*  Carrier ID Here MappedValue=NFF002886 */
                        <L [1]
                            <U1 [1] 1 > /*  Slot ID Here */
                         >
                     >
                 >
                <L [3]
                    <U1 [1] 1 > /*  1: Recipe Only, 2: Recipe with variable tuning */
                    <A [43] 'QC-Monitor/QC-Monitor/QC-Monitor/QM-AVGX.wr' > /*  PPID Here MappedValue=QC-Monitor/QC-Monitor/QC-Monitor/QM-AVGX.wr */
                    <L [0]
                     >
                 >
                <BOOLEAN [1] True > /*  True: Auto Start, False: Remote Start */
                <L [0] /*  PRPAUSEEVENT */
                 >
             >
         >
     >
.
PROCESS_JOB_CREATE_MULTI: 'S16F15' W /* Name=PROCESS_JOB_CREATE_MULTI_1 Dir=3 TID=0 */
    <L [2]
        <U4 [1] 1 >
        <L [1]
            <L [6]
                <A [10] 'Multi_PJ_1' > /*  PRJOBID MappedValue=Multi_PJ_1 */
                <B [1] 0x0D > /*  13: Carrier, 14: Substrate */
                <L [1]
                    <L [2]
                        <A [9] 'NFF002886' > /*  Carrier ID Here MappedValue=NFF002886 */
                        <L [1]
                            <U1 [1] 1 > /*  Slot ID Here */
                         >
                     >
                 >
                <L [3]
                    <U1 [1] 2 > /*  1: Recipe Only, 2: Recipe with variable tuning */
                    <A [43] 'QC-Monitor/QC-Monitor/QC-Monitor/QM-AVGX.wr' > /*  PPID Here MappedValue=QC-Monitor/QC-Monitor/QC-Monitor/QM-AVGX.wr */
                    <L [1]
                        <L [2]
                            <A [10] 'BlankWafer' > /*  RCPPARNM MappedValue=BlankWafer */
                            <U1 [1] 1 > /*  RCPPARVAL */
                         >
                     >
                 >
                <BOOLEAN [1] True > /*  True: Auto Start, False: Remote Start */
                <L [0] /*  PRPAUSEEVENT */
                 >
             >
         >
     >
.
PROCESS_JOB_CREATE_MULTI: 'S16F15' W /* Name=PROCESS_JOB_CREATE_MULTI_2 Dir=3 TID=0 */
    <L [2]
        <U4 [1] 0 >
        <L [1]
            <L [6]
                <A [10] 'Multi PJ 1' > /*  PRJOBID MappedValue=Multi PJ 1 */
                <B [1] 0x0D > /*  13: Carrier, 14: Substrate */
                <L [1]
                    <L [2]
                        <A [12] 'BarCodeTestA' > /*  Carrier ID Here MappedValue=BarCodeTestA */
                        <L [3]
                            <U1 [1] 1 > /*  Slot ID Here */
                            <U1 [1] 12 > /*  Slot ID Here */
                            <U1 [1] 25 > /*  Slot ID Here */
                         >
                     >
                 >
                <L [3]
                    <U1 [1] 1 > /*  1: Recipe Only, 2: Recipe with variable tuning */
                    <A [30] 'TMR201/V75_85/V75_85/V75_85.wr' > /*  PPID Here MappedValue=TMR201/V75_85/V75_85/V75_85.wr */
                    <L [0]
                     >
                 >
                <BOOLEAN [1] True > /*  True: Auto Start, False: Remote Start */
                <L [0] /*  PRPAUSEEVENT */
                 >
             >
         >
     >
.
S16F16: 'S16F16' /* Name=S16F16 Dir=3 TID=0 */
    <L [2]
        <L [1]
            <A [7] 'PJID001' > /* Name=PJID1 MappedValue=PJID001 */
         >
        <L [2]
            <BOOLEAN [1] True > /* Name=ACKA */
            <L [0]
             >
         >
     >
.
S16F16: 'S16F16' /* Name=S16F16NAK Dir=3 TID=0 */
    <L [2]
        <L [0]
         >
        <L [2]
            <BOOLEAN [1] False > /* Name=ACKA */
            <L [0]
             >
         >
     >
.
S16F17PRJobDequeue: 'S16F17' W /* Name=PRJobDequeue Dir=2 TID=0 */
    <L [1]
        <A [0] > /* Name=PJ */
     >
.
S16F18PRJobDequeueAck_Ack: 'S16F18' /* Name=PRJobDequeueAck_Ack Dir=1 TID=0 */
    <L [2]
        <L [1]
            <A [0] > /* Name=PJID */
         >
        <L [2]
            <BOOLEAN [0] > /* Name=ACK */
            <L [1]
                <L [2]
                    <A [0] > /* Name=code */
                    <A [0] > /* Name=text */
                 >
             >
         >
     >
.
PJ_GET_ALL: 'S16F19' W /* Name=PJ_GET_ALL Dir=2 TID=0 */
.
PJALL: 'S16F20' /* Name=PJALL Dir=3 TID=0 */
    <L [...]
        <L [2]
            <A [7] 'PJID001' > /* Name=PJIOBID MappedValue=PJID001 */
            <A [17] 'PRJobWaitingStart' > /* Name=PRSTATE MappedValue=PRJobWaitingStart */
         >
     >
.
PJGETSPACE: 'S16F21' W /* Name=PJGETSPACE Dir=2 TID=0 */
.
S16F22: 'S16F22' /* Name=S16F22 Dir=3 TID=0 */
    <U4 [1] 50 > /* Name=PRJOBSPACE */
.
S16F27CJCmdReq: 'S16F27' W /* Name=CJCmdReq Dir=2 TID=0 */
    <L [3]
        <A [7] 'CJID001' > /* Name=CTLJOBID MappedValue=CJID001 */
        <U1 [1] 5 > /* Name=CTLJOBCMD MappedValue=CJDeselect */
        <L [2]
            <A [6] 'Action' > /* Name=Action MappedValue=Action */
            <U1 [1] 1 > /* Name=ActionValue */
         >
     >
.
S16F27CJCmdReqWithoutAction: 'S16F27' W /* Name=CJCmdReqWithoutAction Dir=2 TID=0 */
    <L [3]
        <A [7] 'CJID001' > /* Name=CTLJOBID MappedValue=CJID001 */
        <U1 [1] 5 > /* Name=CTLJOBCMD MappedValue=CJDeselect */
        <L [0]
         >
     >
.
S16F27CJStart: 'S16F27' W /* Name=CJStart Dir=2 TID=0 */
    <L [3]
        <A [7] 'CJID001' > /* Name=CTLJOBID MappedValue=CJID001 */
        <U1 [1] 1 > /* Name=CTLJOBCMD MappedValue=CJStart */
        <L [0]
         >
     >
.
CJC_Ack: 'S16F28' /* Name=CJCmdAck_Ack Dir=1 TID=0 */
    <L [2]
        <BOOLEAN [1] True > /* Name=ACKA MappedValue=True */
        <L [2]
            <U4 [1] 0 > /* Name=ERRCODE */
            <A [9] 'No errors' > /* Name=ERRTEXT MappedValue=No errors */
         >
     >
.
CJC_Nak: 'S16F28' /* Name=CJCmdAck_Nak Dir=1 TID=0 */
    <L [2]
        <BOOLEAN [1] False > /* Name=ACKA MappedValue=False */
        <L [2]
            <U4 [1] 16 > /* Name=ERRCODE */
            <A [28] 'Not available for processing' > /* Name=ERRTEXT MappedValue=Not available for processing */
         >
     >
.
REMOTECOMMAND_ACK: 'S2F42' /* Name=REMOTECOMMAND_ACK Dir=3 TID=0 */
    <L [2]
        <B [1] 0x00 > /* Name=ACK Keyword=AckCode MappedValue=OK */
        <L [0]
         >
     >
.
S7F25CurrentPPUpload: 'S7F25' W /* Name=CurrentPPUpload Dir=3 TID=0 */
    <A [17] 'C2    /10/35/595S' > /* Name=PPID Keyword=ProcessProgramID MappedValue=C2    /10/35/595S */
.
S7F26CurrentPPUpload_Ack: 'S7F26' /* Name=CurrentPPUpload_Ack Dir=3 TID=0 */
    <L [4]
        <A [0] > /* Name=PID */
        <A [0] > /* Name=MDLN */
        <A [0] > /* Name=SOFTREV */
        <L [...]
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <A [0] > /* Name=  */
             >
            <L [2]
                <A [0] > /* Name=  */
                <L [...]
                    <A [0] > /* Name=  */
                 >
             >
            <L [2]
                <A [0] > /* Name=  */
                <L [...]
                    <A [0] > /* Name=  */
                 >
             >
            <L [2]
                <A [0] > /* Name=  */
                <L [...]
                    <A [0] > /* Name=  */
                 >
             >
         >
     >
.
S1F3ALL_STATUS_VARIABLE_VALUE: 'S1F3' W /* Name=ALL_STATUS_VARIABLE_VALUE Dir=2 TID=0 */
    <L [...]
        <U4 [1] 512 > /* Name=SVID Keyword=ControlStateQuery */
     >
.
REMOTECOMMAND_ACK: 'S2F42' /* Name=REMOTECOMMAND_ACKtt Dir=3 TID=0 */
    <L [2]
        <U1 [1] 0 > /* Name=ACK Keyword=AckCode */
        <L [0]
         >
     >
.
DTA: 'S2F32' /* Name=DateTimeSetAck_AckTT Dir=1 TID=0 */
    <U1 [1] 0 > /* Name=TIACK Keyword=AckCode MappedValue=OK */
.
S3F13S3F13S3F13_SetMaterialA: 'S3F13' W /* Name=S3F13S3F13_SetMaterialA Dir=2 TID=0 */
    <L [2]
        <B [1] 0x64 > /* Name=PTN */
        <A [12] 'LG0001058.00' > /* Name=Material ID MappedValue=LG0001058.00 */
     >
.
S3F13MIDSEND: 'S3F13' W /* Name=MIDSEND Dir=2 TID=0 */
    <L [2]
        <B [1] 0x64 > /* Name=PTN */
        <A [0] > /* Name=MID */
     >
.
S7F11M_PMUpdateSend: 'S7F11' W /* Name=M/PMUpdateSend Dir=2 TID=0 */
    <L [1]
        <L [2]
            <A [8] 'TRANSFER' > /* Name=PPID MappedValue=TRANSFER */
            <L [1] /* Name=a */
                <A [5] 'TEST1' > /* Name=MID MappedValue=TEST1 */
             >
         >
     >
.
S7F11PPSelect: 'S7F11' W /* Name=S7F11PPSelect Dir=2 TID=0 */
    <L [1]
        <L [2]
            <A [16] 'OXIDE-1.2K      ' > /* Name=Sequence Program ID MappedValue=OXIDE-1.2K       */
            <L [1] /* Name=a */
                <A [12] 'LG0001058.00' > /* Name=Material ID MappedValue=LG0001058.00 */
             >
         >
     >
.
S7F12M_PMUpdate_NACK: 'S7F12' /* Name=M/PMUpdate_NACK Dir=1 TID=0 */
    <B [1] 0x40 > /* Name=ACKC7 */
.
S7F12M_PMUpdateAcknowlodg: 'S7F12' /* Name=M/PMUpdateAcknowlodg Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC7 MappedValue=OK */
.
S3F14MID_NACK: 'S3F14' /* Name=MID_NACK Dir=1 TID=0 */
    <B [1] 0x64 > /* Name=MIDAC */
.
S3F14MIDACK: 'S3F14' /* Name=MIDACK Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=MIDAC MappedValue=OK */
.
S2F23TraceInitializeSend: 'S2F23' W /* Name=TraceInitializeSend Dir=2 TID=0 */
    <L [5]
        <U1 [0] > /* Name=TRID Keyword=TraceRequestID */
        <A [6] '000013' > /* Name=DSPER Keyword=DataSamplePeriod MappedValue=000013 */
        <U1 [1] 1 > /* Name=TOTSMP Keyword=SampleLimit */
        <U1 [1] 1 > /* Name=REPGSZ Keyword=ReportGroupSize */
        <L [...] /* Name=svidListTemplate Keyword=SvidList */
            <U2 [0] > /* Name=SVID Keyword=StatusVariableID */
         >
     >
.
S7F66SequenceListRequest_Ack: 'S7F66' /* Name=SequenceListRequest_Ack Dir=3 TID=0 */
    <L [...]
        <A [0] > /* Name=sv */
     >
.
S7F65SequenceListRequest: 'S7F65' W /* Name=SequenceListRequest Dir=2 TID=0 */
.
S6F3CassetteAStart: 'S6F3' /* Name=CassetteAStart Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 136208 >
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* MappedValue=EMES MappedValue=EMES MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* MappedValue=ascii text MappedValue=ascii text MappedValue=ascii text */
                        <A [80] 'Cassette  A  wafer processing started                                           ' > /* Name=  MappedValue=Cassette  A  wafer processing started                                            */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719202523' > /* MappedValue=130628151029 MappedValue=130719202523 MappedValue=130719202523 */
                     >
                 >
             >
         >
     >
.
S6F3ChamberA_END: 'S6F3' /* Name=ChamberA_END Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 1500580103 > /* Name=  */
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* Name=  MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* Name=  MappedValue=ascii text */
                        <A [80] 'Chamber A process has ended                                                     ' > /* Name=  MappedValue=Chamber A process has ended                                                      */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203522' > /* MappedValue=130628151029 MappedValue=130719203522 MappedValue=130719203522 */
                     >
                 >
             >
         >
     >
.
S6F3ChamberA_Start: 'S6F3' /* Name=ChamberA_Start Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 1500580103 > /* Name=  */
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* Name=  MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* Name=  MappedValue=ascii text */
                        <A [62] ''Chamber A1 started processing wafer from cassette  B  slot 24' > /* Name=  MappedValue='Chamber A1 started processing wafer from cassette  B  slot 24 */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203522' > /* MappedValue=130628151029 MappedValue=130719203522 MappedValue=130719203522 */
                     >
                 >
             >
         >
     >
.
S6F3ChamberA2_Start: 'S6F3' /* Name=ChamberA2_Start Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 1500580103 > /* Name=  */
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* Name=  MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* Name=  MappedValue=ascii text */
                        <A [62] ''Chamber A2 started processing wafer from cassette  B  slot 25' > /* Name=  MappedValue='Chamber A2 started processing wafer from cassette  B  slot 25 */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203522' > /* MappedValue=130628151029 MappedValue=130719203522 MappedValue=130719203522 */
                     >
                 >
             >
         >
     >
.
S6F3: 'S6F3' /* Name=ReadyToLoad_A Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 88402 >
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* MappedValue=EMES MappedValue=EMES MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* MappedValue=ascii text MappedValue=ascii text MappedValue=ascii text */
                        <A [65] 'Cassette  A  load state changed to Ready for Load and door closed' > /* Name=  MappedValue=Cassette  A  load state changed to Ready for Load and door closed */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203522' > /* MappedValue=130628151029 MappedValue=130719203522 MappedValue=130719203522 */
                     >
                 >
             >
         >
     >
.
S6F3: 'S6F3' /* Name=LoadComplete_A Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 88402 >
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* Name=  MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* Name=  MappedValue=ascii text */
                        <A [80] 'Cassette  A  load completed                                                     ' > /* Name=  MappedValue=Cassette  A  load completed                                                      */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203522' > /* MappedValue=130628151029 MappedValue=130719203522 MappedValue=130719203522 */
                     >
                 >
             >
         >
     >
.
S6F3ReadyToUnload_A: 'S6F3' /* Name=ReadyToUnload_A Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 93608 >
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* Name=  MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* Name=  MappedValue=ascii text */
                        <A [80] 'Cassette  A  last wafer of lot 49 returned to carrier                           ' > /* Name=  MappedValue=Cassette  A  last wafer of lot 49 returned to carrier                            */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203522' > /* MappedValue=130628151029 MappedValue=130719203522 MappedValue=130719203522 */
                     >
                 >
             >
         >
     >
.
S6F3: 'S6F3' /* Name=S6F3 Dir=3 TID=0 */
    <L [3]
        <A [1] ' ' >
        <I4 [1] 80119 >
        <L [2]
            <L [2]
                <A [4] 'EMES' > /* MappedValue=EMES MappedValue=EMES MappedValue=EMES */
                <L [1]
                    <L [2]
                        <A [10] 'ascii text' > /* MappedValue=ascii text MappedValue=ascii text MappedValue=ascii text */
                        <A [80] ' B  cassette removed                                                            ' > /* MappedValue=Front door opened MappedValue=Right Load Lock A door has closed MappedValue= B  cassette removed                                                             */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT MappedValue=EVENT CONTEXT */
                <L [5]
                    <L [2]
                        <A [4] 'MID ' > /* MappedValue=MID MappedValue=MID MappedValue=MID  */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* MappedValue=WNUM MappedValue=WNUM MappedValue=WNUM */
                        <I2 [1] 0 >
                     >
                    <L [2]
                        <A [4] 'PPID' > /* MappedValue=PPID MappedValue=PPID MappedValue=PPID */
                        <A [16] '                ' >
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* MappedValue=USER NAME MappedValue=USER NAME MappedValue=USER NAME */
                        <A [8] 'secevent' > /* MappedValue=secevent MappedValue=secevent MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* MappedValue=TIME MappedValue=TIME MappedValue=TIME */
                        <A [12] '130719203524' > /* MappedValue=130628151029 MappedValue=130719203524 MappedValue=130719203524 */
                     >
                 >
             >
         >
     >
.
S6F3S6F3__FrontDoorOpened: 'S6F3' W /* Name=S6F3S6F3__FrontDoorOpened Dir=1 TID=0 */
    <L [3]
        <A [0] > /* DATAID */
        <I4 [0] > /* Name=CEID Keyword=CollectionEventID */
        <L [...]
            <L [2]
                <A [1] '0' > /* Name=DSID Keyword=DataSetID MappedValue=0 */
                <L [...]
                    <L [2]
                        <A [0] > /* Name=DVNAME Keyword=DataValueName */
                        <A [0] > /* Name=DVVAL Keyword=DataValue */
                     >
                 >
             >
            <L [2]
                <A [1] '0' > /* Name=DSID Keyword=DataSetID MappedValue=0 */
                <L [...]
                    <L [2]
                        <A [0] > /* Name=DVNAME Keyword=DataValueName */
                        <A [0] > /* Name=DVVAL Keyword=DataValue */
                     >
                 >
             >
         >
     >
.
S6F3: 'S6F3' W /* Name=CassetteARemove Dir=1 TID=0 */
    <L [3]
        <A [1] ' ' > /* DATAID */
        <A [11] '     135708' > /* Name=CEID Keyword=CollectionEventID MappedValue=     135708 */
        <L [...]
            <L [2]
                <A [4] 'EMES' > /* Name=DSID Keyword=DataSetID MappedValue=EMES */
                <L [...]
                    <L [2]
                        <A [10] 'ascii text' > /* Name=DVNAME Keyword=DataValueName MappedValue=ascii text */
                        <A [80] 'Cassette  A  unload completed                                                   ' > /* Name=DVVAL Keyword=DataValue MappedValue=Cassette  A  unload completed                                                    */
                     >
                 >
             >
            <L [2]
                <A [13] 'EVENT CONTEXT' > /* Name=DSID Keyword=DataSetID MappedValue=EVENT CONTEXT */
                <L [...]
                    <L [2]
                        <A [4] 'MID ' > /* Name=DVNAME Keyword=DataValueName MappedValue=MID  */
                        <A [16] '                ' > /* Name=DVVAL Keyword=DataValue */
                     >
                    <L [2]
                        <A [4] 'WNUM' > /* Name=DVNAME Keyword=DataValueName MappedValue=WNUM */
                        <A [6] '     0' > /* Name=DVVAL Keyword=DataValue MappedValue=     0 */
                     >
                    <L [2]
                        <A [4] 'PPID' > /* Name=DVNAME Keyword=DataValueName MappedValue=PPID */
                        <A [16] '                ' > /* Name=DVVAL Keyword=DataValue */
                     >
                    <L [2]
                        <A [9] 'USER NAME' > /* Name=DVNAME Keyword=DataValueName MappedValue=USER NAME */
                        <A [8] 'secevent' > /* Name=DVVAL Keyword=DataValue MappedValue=secevent */
                     >
                    <L [2]
                        <A [4] 'TIME' > /* Name=DVNAME Keyword=DataValueName MappedValue=TIME */
                        <A [12] '130816122528' > /* Name=DVVAL Keyword=DataValue MappedValue=130816122528 */
                     >
                 >
             >
         >
     >
.
S7F13DeleteLotSequence: 'S7F13' W /* Name=DeleteLotSequence Dir=2 TID=0 */
    <L [...]
        <L [2]
            <A [0] > /* Name=PPID */
            <L [1]
                <A [0] > /* Name=meterial id */
             >
         >
     >
.
S7F14DELETELOTSEQUENCE_ACK: 'S7F14' /* Name=DELETELOTSEQUENCE_ACK Dir=1 TID=0 */
    <B [1] 0x00 > /* Name=ACKC7 */
.
MMR: 'S7F9' W /* Name=M/PMRequest Dir=2 TID=0 */
.
MMD: 'S7F10' /* Name=M/PMData Dir=1 TID=0 */
    <L [...]
        <L [2]
            <A [0] > /* Name=PPID */
            <L [...]
                <A [0] > /* Name=MID */
             >
         >
     >
.
SPUR: 'S7F73' W /* Name=SequenceProgramUploadRequest Dir=3 TID=0 */
    <A [16] 'OXIDE-1.2K      ' > /* Name=PPID Keyword=ProcessProgramID MappedValue=OXIDE-1.2K       */
.
PRUR: 'S7F93' W /* Name=ProcessRecipeUploadRequest Dir=3 TID=0 */
    <A [16] 'OXIDE-1.2K      ' > /* Name=PPID Keyword=ProcessProgramID MappedValue=OXIDE-1.2K       */
.
PPD: 'S7F74' /* Name=SEQProgramData Dir=3 TID=0 */
    <L [...]
        <A [0] > /* Name=PPID Keyword=ProcessProgramID */
        <B [73] 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x01 > /* Name=PPBODY Keyword=ProcessProgramBody */
     >
.
PPD: 'S7F94' /* Name=PPProgramData Dir=3 TID=0 */
    <L [...]
        <A [0] > /* Name=PPID Keyword=ProcessProgramID */
        <B [73] 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x11 0x01 > /* Name=PPBODY Keyword=ProcessProgramBody */
     >
.
S7F75WaferHistoryDirRequest: 'S7F75' W /* Name=WaferHistoryDirRequest Dir=2 TID=0 */
.
S7F76WaferHistoryListReply: 'S7F76' /* Name=WaferHistoryListReply Dir=3 TID=0 */
    <L [...]
        <L [2]
            <A [3] 'aaa' > /* Name=A MappedValue=aaa */
            <I4 [1] 1222 > /* Name=V */
         >
        <L [2]
            <A [3] 'bbb' > /* Name=A MappedValue=bbb */
            <I4 [1] 925000 > /* Name=V */
         >
     >
.
S2F35LER: 'S2F35' W /* Name=LinkEventReport_DeleteALL Dir=2 TID=0 */
    <L [2]
        <U4 [1] 0 > /* DATAID */
        <L [...] /* Name=eventsList Keyword=EventList */
         >
     >
.
S2F33DR: 'S2F33' W /* Name=DefineReport_TEL Dir=2 TID=0 */
    <L [2]
        <U2 [1] 0 > /* DATAID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportTemplate Keyword=LotID */
                <U2 [1] 191 > /* Name=RPTID Keyword=LotID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 401 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=EndInfo */
                <U2 [1] 192 > /* Name=RPTID Keyword=EndInfo */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 402 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=StartRcp */
                <U2 [1] 193 > /* Name=RPTID Keyword=StartRcp */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 403 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=PortNO */
                <U2 [1] 194 > /* Name=RPTID Keyword=PortNO */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 404 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=LotTime */
                <U2 [1] 195 > /* Name=RPTID Keyword=LotTime */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 405 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=WaferTime */
                <U2 [1] 196 > /* Name=RPTID Keyword=WaferTime */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 406 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=LotNumberOfWF */
                <U2 [1] 197 > /* Name=RPTID Keyword=LotNumberOfWF */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 407 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=LotWaferMap */
                <U2 [1] 198 > /* Name=RPTID Keyword=LotWaferMap */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 408 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=WaferID */
                <U2 [1] 199 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 409 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=CWaferMap */
                <U2 [1] 1910 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 410 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=ProcessingModuleNo */
                <U2 [1] 1911 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 411 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=WaferReaderData */
                <U2 [1] 1912 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 412 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=C1BCRData */
                <U2 [1] 200 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 512 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=C2BCRData */
                <U2 [1] 201 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 513 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=AlarmID */
                <U2 [1] 64 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 100 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=ECChangeID */
                <U2 [1] 65 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 101 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=EventLimit */
                <U2 [1] 66 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 102 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=LimitVariable */
                <U2 [1] 67 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 103 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=OperatorCommand */
                <U2 [1] 68 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 104 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=PPChangedName */
                <U2 [1] 1915 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 415 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=PPChangeStatus */
                <U2 [1] 610 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 106 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=TransitionType */
                <U2 [1] 611 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 107 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=EventPrJobID */
                <U2 [1] 612 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 108 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Keyword=P#WaferMap */
                <U2 [1] 10191 > /* Name=RPTID Keyword=LotID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 16859537 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 33636753 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 50413969 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 167854481 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Lot Keyword=P#Rcp */
                <U2 [1] 10192 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 16859538 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 33636754 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 50413970 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 167854482 > /* Name=VID Keyword=VariableID */
                 >
             >
            <L [2] /* Name=reportTemplate Wafer Keyword=P#Rcp */
                <U2 [1] 20192 > /* Name=RPTID */
                <L [...] /* Name=vidListTemplate Keyword=VidList */
                    <U4 [1] 16863634 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 33640850 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 50418066 > /* Name=VID Keyword=VariableID */
                    <U4 [1] 167858578 > /* Name=VID Keyword=VariableID */
                 >
             >
         >
     >
.
DERAll: 'S2F37' W /* Name=EnableAllEvents Dir=2 TID=0 */
    <L [2]
        <BOOLEAN [1] True > /* Name=CEED Keyword=CollectionEventEnableFlag MappedValue=Enabled */
        <L [0]
         >
     >
.
HCS: 'S2F41' W /* Name=ONLINE-LOCAL Dir=2 TID=0 */
    <L [2]
        <A [7] 'GoLocal' > /* Name=RCMD Keyword=RemoteCommand MappedValue=GoLocal */
        <L [...] /* ParamList */
         >
     >
.
HCS: 'S2F41' W /* Name=ONLINE-REMOTE Dir=2 TID=0 */
    <L [2]
        <A [8] 'GoRemote' > /* Name=RCMD Keyword=RemoteCommand MappedValue=GoRemote */
        <L [...] /* ParamList */
         >
     >
.
S2F41S2F41_PPSELECT: 'S2F41' W /* Name=S2F41_PPSELECT Dir=2 TID=0 */
    <L [2]
        <A [8] 'PPSELECT' > /* Name=RCMD MappedValue=PPSELECT */
        <L [5]
            <L [2]
                <A [6] 'PORTID' > /* Name=PORT MappedValue=PORTID */
                <U1 [0] > /* Name=PTN */
             >
            <L [2]
                <A [4] 'PPID' > /* Name=  MappedValue=PPID */
                <A [0] > /* Name=RECIPEID */
             >
            <L [2]
                <A [5] 'LOTID' > /* Name=  MappedValue=LOTID */
                <A [0] > /* Name=LOTID */
             >
            <L [2]
                <A [9] 'CARRIERID' > /* Name=  MappedValue=CARRIERID */
                <A [0] > /* Name=CSTID */
             >
            <L [2]
                <A [8] 'glassQTY' > /* Name=  MappedValue=glassQTY */
                <A [0] > /* Name=WAFERQTY */
             >
         >
     >
.
RMID: 'S18F9' W /* Name=ReadMaterialIDRequest Dir=2 TID=0 */
    <A [2] '00' > /* Name=TargetID MappedValue=00 */
.
MID: 'S18F10' /* Name=MaterialIDData Dir=1 TID=0 */
    <L [4]
        <A [0] > /* Name=TargetID */
        <A [0] > /* Name=SSACK */
        <A [0] > /* Name=MID */
        <L [4]
            <A [0] > /* Name=Status1 */
            <A [0] > /* Name=Status2 */
            <A [0] > /* Name=Status3 */
            <A [0] > /* Name=Status4 */
         >
     >
.
ERS: 'S18F71' /* Name=EventReportSend_71 Dir=1 TID=0 */
    <L [4]
        <A [0] > /* Name=TargetID */
        <A [0] > /* Name=SSACK */
        <A [0] > /* Name=CEID */
        <L [2]
            <A [0] > /* Name=DVNAME */
            <A [0] > /* Name=DVVALUE */
         >
     >
.
S2F41S2F41_ScanSlotmap: 'S2F41' W /* Name=S2F41_ScanSlotmap Dir=2 TID=0 */
    <L [2]
        <A [12] 'OPEN_MAPPING' > /* Name=RCMD MappedValue=OPEN_MAPPING */
        <L [...] /* ParamList */
            <L [2]
                <A [6] 'PORTID' > /* Name=  MappedValue=PORTID */
                <A [3] 'LP1' > /* Name=PTN MappedValue=LP1 */
             >
         >
     >
.
S2F49S2F49_Start: 'S2F49' W /* Name=S2F49_Start Dir=2 TID=0 */
    <L [4]
        <U4 [1] 0 > /* DATAID */
        <A [8] 'NOT USED' > /* Name=OBJSPEC MappedValue=NOT USED */
        <A [10] 'RUN_RECIPE' > /* Name=RCMD MappedValue=RUN_RECIPE */
        <L [...] /* ParamList */
            <L [2]
                <A [11] 'COMMANDINFO' > /* Name=COMMANDID MappedValue=COMMANDINFO */
                <L [...]
                    <A [0] > /* Name=COMMANDID */
                    <U2 [1] 1 > /* Name=PRIORITY */
                 >
             >
            <L [2]
                <A [8] 'RECIPEID' > /* Name=RECIPEID MappedValue=RECIPEID */
                <A [18] 'Inspection - Front' > /* Name=  MappedValue=Inspection - Front */
             >
            <L [2]
                <A [6] 'PORTID' > /* Name=PORTID MappedValue=PORTID */
                <A [3] 'LP2' > /* Name=  MappedValue=LP2 */
             >
            <L [2]
                <A [15] 'INSSUBSTRATELOC' > /* Name=  MappedValue=INSSUBSTRATELOC */
                <L [...]
                    <A [7] '001_001' > /* Name=SUBSTRATELOC MappedValue=001_001 */
                 >
             >
         >
     >
.
S2F41S2F41_CancelCarrier: 'S2F41' W /* Name=S2F41_CancelCarrier Dir=2 TID=0 */
    <L [2]
        <A [6] 'CANCEL' > /* Name=RCMD MappedValue=CANCEL */
        <L [...] /* ParamList */
            <L [2]
                <A [6] 'PORTID' > /* Name=  MappedValue=PORTID */
                <A [3] 'LP1' > /* Name=PTN MappedValue=LP1 */
             >
         >
     >
.
S2F41S2F41_CLOSE_CARRIER: 'S2F41' W /* Name=S2F41_CLOSE_CARRIER Dir=2 TID=0 */
    <L [2]
        <A [13] 'CLOSE_CARRIER' > /* Name=RCMD MappedValue=CLOSE_CARRIER */
        <L [...] /* ParamList */
            <L [2]
                <A [6] 'PORTID' > /* Name=  MappedValue=PORTID */
                <A [3] 'LP1' > /* Name=PTN MappedValue=LP1 */
             >
         >
     >
.
S2F41S2F41_SET_CARRIER_SIZE: 'S2F41' W /* Name=S2F41_SET_CARRIER_SIZE Dir=2 TID=0 */
    <L [2]
        <A [16] 'SET_CARRIER_SIZE' > /* Name=RCMD MappedValue=SET_CARRIER_SIZE */
        <L [...] /* ParamList */
            <L [2]
                <A [1] '1' > /* Name=CARRIERSIZE MappedValue=1 */
                <A [3] 'LP1' > /* Name=PORTID MappedValue=LP1 */
             >
         >
     >
.
ECS: 'S2F15' W /* Name=EquipmentConstantSendControlModeChange2Remote Dir=2 TID=0 */
    <L [...] /* ECVList */
        <L [2] /* ECVPair */
            <U4 [1] 1006 > /* Name=ECID Keyword=InitCommState MappedValue=DefaultOnlineTo */
            <U2 [1] 1 > /* Name=ECV Keyword=EquipmentConstantValue MappedValue=Remote-Onlilne */
         >
     >
.
ECS: 'S2F15' W /* Name=EquipmentConstantSendControlModeChange2Local Dir=2 TID=0 */
    <L [...] /* ECVList */
        <L [2] /* ECVPair */
            <U4 [1] 1006 > /* Name=ECID Keyword=InitCommState MappedValue=DefaultOnlineTo */
            <U2 [1] 0 > /* Name=ECV Keyword=EquipmentConstantValue MappedValue=Remote-Local */
         >
     >
.
ECNR: 'S2F29' W /* Name=EquipmentConstantNamelistRequest_Alllll Dir=2 TID=0 */
    <L [...]
        <U4 [1] 16818677 > /* Name=SVID Keyword=P1CMPressure
 */
        <U4 [1] 16818678 > /* Name=SVID Keyword=P1RFPowerUp */
        <U4 [1] 16818679 > /* Name=SVID Keyword=P1RFPowerLo
 */
        <U4 [1] 16818680 > /* Name=SVID Keyword=P1REFPowerUp
 */
        <U4 [1] 16818681 > /* Name=SVID Keyword=P1REFPowerLo */
        <U4 [1] 16818682 > /* Name=SVID Keyword=P1RFVppUp
 */
        <U4 [1] 16818683 > /* Name=SVID Keyword=P1RFVppLo
 */
        <U4 [1] 16818684 > /* Name=SVID Keyword=P1RFVdcUp

 */
        <U4 [1] 16818685 > /* Name=SVID Keyword=P1RFVdcLo
 */
        <U4 [1] 16818686 > /* Name=SVID Keyword=P1GAS1
 */
        <U4 [1] 16818687 > /* Name=SVID Keyword=P1GAS2
 */
        <U4 [1] 16818688 > /* Name=SVID Keyword=P1GAS3
 */
        <U4 [1] 16818689 > /* Name=SVID Keyword=P1GAS4
 */
        <U4 [1] 16818690 > /* Name=SVID Keyword=P1GAS5
 */
        <U4 [1] 16818691 > /* Name=SVID Keyword=P1GAS6
 */
        <U4 [1] 16818692 > /* Name=SVID Keyword=P1GAS7
 */
        <U4 [1] 16818693 > /* Name=SVID Keyword=P1GAS8
 */
        <U4 [1] 16818734 > /* Name=SVID Keyword=P1GAS9
 */
        <U4 [1] 16818735 > /* Name=SVID Keyword=P1GAS10
 */
        <U4 [1] 16818736 > /* Name=SVID Keyword=P1GAS11

 */
        <U4 [1] 16818737 > /* Name=SVID Keyword=P1GAS12
 */
        <U4 [1] 16818738 > /* Name=SVID Keyword=P1GAS13
 */
        <U4 [1] 16818739 > /* Name=SVID Keyword=P1GAS14
 */
        <U4 [1] 16818740 > /* Name=SVID Keyword=P1GAS15 */
        <U4 [1] 16818741 > /* Name=SVID Keyword=P1GAS16
 */
        <U4 [1] 16818694 > /* Name=SVID Keyword=P1UpperTemp */
        <U4 [1] 16818695 > /* Name=SVID Keyword=P1WallTemp
 */
        <U4 [1] 16818696 > /* Name=SVID Keyword=P1LowerTemp
 */
        <U4 [1] 16818697 > /* Name=SVID Keyword=P1BackPressure1
 */
        <U4 [1] 16818698 > /* Name=SVID Keyword=P1BackPressure2
 */
        <U4 [1] 16818719 > /* Name=SVID Keyword=P1BackPressure3
 */
        <U4 [1] 16818699 > /* Name=SVID Keyword=P1HeGAS1
 */
        <U4 [1] 16818700 > /* Name=SVID Keyword=P1HeGAS2

 */
        <U4 [1] 16818720 > /* Name=SVID Keyword=P1HeGAS3
 */
        <U4 [1] 16818701 > /* Name=SVID Keyword=P1ECSVoltage
 */
        <U4 [1] 16818702 > /* Name=SVID Keyword=P1ECSElectricCurrent
 */
        <U4 [1] 16818703 > /* Name=SVID Keyword=P1APC
 */
        <U4 [1] 16818704 > /* Name=SVID Keyword=P1GAPDistance */
        <U4 [1] 16818705 > /* Name=SVID Keyword=P1C1PositonUp
 */
        <U4 [1] 16818706 > /* Name=SVID Keyword=P1C2PositionUp
 */
        <U4 [1] 16818707 > /* Name=SVID Keyword=P1C1PositionLo
 */
        <U4 [1] 16818708 > /* Name=SVID Keyword=P1C2PositionLo
 */
        <U4 [1] 16818709 > /* Name=SVID Keyword=P1C1PositonUp
 */
        <U4 [1] 16818710 > /* Name=SVID Keyword=P1C2PositonUp
 */
        <U4 [1] 16818711 > /* Name=SVID Keyword=P1C1PositonLo
 */
        <U4 [1] 16818712 > /* Name=SVID Keyword=P1C2PositonLo
 */
        <U4 [1] 16818713 > /* Name=SVID Keyword=P1MRatio
 */
        <U4 [1] 16818714 > /* Name=SVID Keyword=P1Phase
 */
        <U4 [1] 16818742 > /* Name=SVID Keyword=P1PhaseLo
 */
        <U4 [1] 16818715 > /* Name=SVID Keyword=P1Magnitude
 */
        <U4 [1] 16818743 > /* Name=SVID Keyword=P1MagnitudeLo
 */
        <U4 [1] 16818716 > /* Name=SVID Keyword=P1UpReactTemp
 */
        <U4 [1] 16818717 > /* Name=SVID Keyword=P1LowReactTemp
 */
        <U4 [1] 16818718 > /* Name=SVID Keyword=P1LowWallTemp
 */
        <U4 [1] 16818817 > /* Name=SVID Keyword=P1SplitPressRatio
 */
        <U4 [1] 16818818 > /* Name=SVID Keyword=P1SplitCenterPress
 */
        <U4 [1] 16818819 > /* Name=SVID Keyword=P1SplitEdgePress
 */
        <U4 [1] 16818722 > /* Name=SVID Keyword=P1CurrentStepNo
 */
     >
.
S2F41S2F41_READ_CARRIER_ID: 'S2F41' W /* Name=S2F41_READ_CARRIER_ID Dir=2 TID=0 */
    <L [2]
        <A [15] 'READ_CARRIER_ID' > /* Name=RCMD MappedValue=READ_CARRIER_ID */
        <L [...] /* ParamList */
            <L [2]
                <A [6] 'PORTID' > /* Name=  MappedValue=PORTID */
                <A [3] 'LP1' > /* Name=PTN MappedValue=LP1 */
             >
         >
     >
.
S2F41S2F41_ONLINELOCAL: 'S2F41' W /* Name=S2F41_ONLINELOCAL Dir=2 TID=0 */
    <L [2]
        <A [7] 'GoLocal' > /* Name=RCMD MappedValue=GoLocal */
        <L [...] /* ParamList */
            <L [0]
             >
         >
     >
.
S2F41S2F41_ONLINEREMOTE: 'S2F41' W /* Name=S2F41_ONLINEREMOTE Dir=2 TID=0 */
    <L [2]
        <A [8] 'GoRemote' > /* Name=RCMD MappedValue=GoRemote */
        <L [...] /* ParamList */
            <L [0]
             >
         >
     >
.
S2F41S2F41_OPEN_CARRIER: 'S2F41' W /* Name=S2F41_OPEN_CARRIER Dir=2 TID=0 */
    <L [2]
        <A [12] 'OPEN_CARRIER' > /* Name=RCMD MappedValue=OPEN_CARRIER */
        <L [...] /* ParamList */
            <L [2]
                <A [6] 'PORTID' > /* Name=  MappedValue=PORTID */
                <A [3] 'LP1' > /* Name=PTN MappedValue=LP1 */
             >
         >
     >
.
S2F49S2F49_SLOT_TRANSFER: 'S2F49' W /* Name=S2F49_SLOT_TRANSFER Dir=2 TID=0 */
    <L [4]
        <U4 [1] 0 > /* DATAID */
        <A [8] 'NOT USED' > /* Name=OBJSPEC MappedValue=NOT USED */
        <A [13] 'SLOT_TRANSFER' > /* Name=RCMD MappedValue=SLOT_TRANSFER */
        <L [...] /* ParamList */
            <L [2]
                <A [11] 'COMMANDINFO' > /* Name=COMMANDID MappedValue=COMMANDINFO */
                <L [2]
                    <A [0] > /* Name=COMMANDID */
                    <U1 [1] 1 > /* Name=PRIORITY */
                 >
             >
            <L [...]
                <A [17] 'SLOT_TRANSFERINFO' > /* Name=SLOT_TRANSFERINFO MappedValue=SLOT_TRANSFERINFO */
                <L [4]
                    <U1 [1] 0 > /* Name=WAFER_ID_READ_MODE */
                    <BOOLEAN [1] True > /* Name=CheckID */
                    <BOOLEAN [1] True > /* Name=ALIGN */
                    <L [...]
                        <L [2]
                            <A [7] '001_001' > /* Name=Source MappedValue=001_001 */
                            <A [7] '002_001' > /* Name=Destination MappedValue=002_001 */
                         >
                     >
                 >
             >
         >
     >
.
S2F49S2F49_ReadOnly: 'S2F49' W /* Name=S2F49_ReadOnly Dir=2 TID=0 */
    <L [4]
        <U4 [1] 0 > /* DATAID */
        <A [8] 'NOT USED' > /* Name=OBJSPEC MappedValue=NOT USED */
        <A [12] 'READ_WAFERID' > /* Name=RCMD MappedValue=READ_WAFERID */
        <L [2] /* ParamList */
            <L [2]
                <A [11] 'COMMANDINFO' > /* Name=  MappedValue=COMMANDINFO */
                <L [2]
                    <A [0] > /* Name=COMMANDID */
                    <U2 [1] 1 > /* Name=  */
                 >
             >
            <L [2]
                <A [17] 'READ_WAFERID_INFO' > /* Name=  MappedValue=READ_WAFERID_INFO */
                <L [2]
                    <U1 [1] 0 > /* Name=  */
                    <L [1]
                        <L [2]
                            <L [2]
                                <A [6] 'PORTID' > /* Name=  MappedValue=PORTID */
                                <A [3] 'LP1' > /* Name=  MappedValue=LP1 */
                             >
                            <L [2]
                                <A [10] 'ContentMap' > /* Name=  MappedValue=ContentMap */
                                <L [...]
                                 >
                             >
                         >
                     >
                 >
             >
         >
     >
.
S2F49UnknownMessage_S2F49: 'S2F49' W /* Name=UnknownMessage_S2F49  TID=0 */
    <L [4]
        <U4 [1] 0 >
        <A [8] 'NOT USED' > /* MappedValue=NOT USED */
        <A [12] 'READ_WAFERID' > /* MappedValue=READ_WAFERID */
        <L [2]
            <L [2]
                <A [11] 'COMMANDINFO' > /* MappedValue=COMMANDINFO */
                <L [2]
                    <A [6] 'job_id' > /* MappedValue=job_id */
                    <U2 [1] 1 >
                 >
             >
            <L [2]
                <A [17] 'READ_WAFERID_INFO' > /* MappedValue=READ_WAFERID_INFO */
                <L [2]
                    <U1 [1] 0 >
                    <L [1]
                        <L [2]
                            <L [2]
                                <A [6] 'PORTID' > /* MappedValue=PORTID */
                                <A [3] 'LP1' > /* MappedValue=LP1 */
                             >
                            <L [2]
                                <A [10] 'ContentMap' > /* MappedValue=ContentMap */
                                <L [3]
                                    <U1 [1] 1 >
                                    <U1 [1] 2 >
                                    <U1 [1] 3 >
                                 >
                             >
                         >
                     >
                 >
             >
         >
     >
.
S1F3QueryPortTransferStateList: 'S1F3' W /* Name=QueryPortTransferStateList Dir=2 TID=0 */
    <L [...]
        <U4 [1] 163 > /* Name=SVID Keyword=StatusVariableID */
     >
.
S1F3QueryControlState: 'S1F3' W /* Name=QueryControlState Dir=2 TID=0 */
    <L [...]
        <U4 [1] 29 > /* Name=SVID Keyword=Remote or Local */
     >
.
PRGAO: 'S16F19' W /* Name=PRGetAllObjects Dir=2 TID=0 */
.
PJMCS: 'S16F15' W /* Name=PRJobMultiCreate Dir=2 TID=0 */
    <L [2]
        <U4 [1] 0 > /* Name=DATAID */
        <L [...] /* Name=NumOfPJs_Created */
            <L [6]
                <A [11] 'PJ-LP2 - 01' > /* Name=PRJOBID MappedValue=PJ-LP2 - 01 */
                <B [1] 0x0D > /* Name=MaterialFormat Keyword=MF MappedValue=Carrier */
                <L [...] /* Name=NumOfCarriers */
                    <L [2]
                        <A [10] 'LP2 - 01XX' > /* Name=CarrierID MappedValue=LP2 - 01XX */
                        <L [...] /* SlotMap */
                            <U1 [1] 2 > /* Name=SlotID */
                         >
                     >
                 >
                <L [3]
                    <U1 [1] 1 > /* Name=RecipeMethod MappedValue=Recipe Only */
                    <A [22] 'SECS-test\BareWafer\2X' > /* Name=RCPSpec MappedValue=SECS-test\BareWafer\2X */
                    <L [...] /* Name=RecVariableList */
                     >
                 >
                <BOOLEAN [1] True > /* Name=PRProcessStart */
                <L [...] /* Name=PRPauseEvent */
                 >
             >
         >
     >
.
CCJRw: 'S14F9' W /* Name=CreateCJRequest Dir=2 TID=0 */
    <L [3]
        <A [9] 'Equipment' > /* Name=OBJSPEC MappedValue=Equipment */
        <A [10] 'ControlJob' > /* Name=OBJTYPE MappedValue=ControlJob */
        <L [...] /* Name=CJAttrList */
            <L [2]
                <A [5] 'ObjID' > /* ATTRID MappedValue=ObjID */
                <A [11] 'CJ-LP2 - 01' > /* ControlJobID MappedValue=CJ-LP2 - 01 */
             >
            <L [2]
                <A [16] 'CarrierInputSpec' > /* Name=ATTRID MappedValue=CarrierInputSpec */
                <L [...]
                    <A [10] 'LP2 - 01XX' > /* CarrierID MappedValue=LP2 - 01XX */
                 >
             >
            <L [2]
                <A [18] 'ProcessingCtrlSpec' > /* Name=ATTRID MappedValue=ProcessingCtrlSpec */
                <L [...]
                    <L [3]
                        <A [11] 'PJ-LP2 - 01' > /* PJID MappedValue=PJ-LP2 - 01 */
                        <L [...] /* Name=ControlRule */
                         >
                        <L [...] /* Name=OutputRule */
                         >
                     >
                 >
             >
            <L [2]
                <A [11] 'StartMethod' > /* Name=ATTRID MappedValue=StartMethod */
                <BOOLEAN [1] True > /* ATTRDATA */
             >
            <L [2]
                <A [11] 'MtrlOutSpec' > /* Name=ATTRID MappedValue=MtrlOutSpec */
                <L [...]
                 >
             >
         >
     >
.
ECS: 'S2F15' W /* Name=EquipmentConstantNamelistRequestAll Dir=2 TID=0 */
    <L [...] /* ECVList */
     >
.
S1F3QueryCJAvailableSpace: 'S1F3' W /* Name=QueryCJAvailableSpace Dir=2 TID=0 */
    <L [1]
        <U4 [1] 493 > /* Name=SVID Keyword=StatusVariableID MappedValue=CJJobs */
     >
.
ERS: 'S6F11' W /* Name=EventReportSend Dir=1 TID=0 */
    <L [3]
        <U4 [1] 11 > /* Name=DATAID */
        <U4 [1] 103 > /* Name=CEID Keyword=CollectionEventID */
        <L [...] /* Name=reportsList Keyword=ReportList */
            <L [2] /* Name=reportDefinition */
                <U4 [0] > /* Name=RPTID Keyword=ReportID */
                <L [...] /* Name=reportVidListTemplate Keyword=VidList */
                    <A [3] 'LP1' > /* Name=V Keyword=VariableData MappedValue=LP1 */
                 >
             >
         >
     >
.
S7F25FormattedProcessProgramRequest: 'S7F25' W /* Name=FormattedProcessProgramRequest Dir=3 TID=0 */
    <A [17] 'C2    /10/35/595S' > /* Name=PPID Keyword=ProcessProgramID MappedValue=C2    /10/35/595S */
.
S7F23FormattedProcessProgramSend: 'S7F23' W /* Name=FormattedProcessProgramSend Dir=3 TID=0 */
    <L [4]
        <A [0] > /* Name=PID */
        <A [0] > /* Name=MDLN */
        <A [0] > /* Name=SOFTREV */
        <L [...]
         >
     >
.
PVA: 'S7F28' /* Name=ProcessProgramVerificationAck Dir=2 TID=0 */
.
FPA: 'S7F24' /* Name=FormattedProcessProgramAck_Ack Dir=3 TID=0 */
    <B [1] 0x00 > /* Name=ACKC7 Keyword=AckCode MappedValue=Accepted */
.
FPA_Nak: 'S7F24' /* Name=FormattedProcessProgramAck_Nak Dir=3 TID=0 */
    <B [1] 0x01 > /* Name=ACKC7_Nak Keyword=AckCode MappedValue=Permission Not Granted */
.
PVS: 'S7F27' W /* Name=ProcessProgramVerificationSend Dir=1 TID=0 */
    <L [2]
        <A [7] 'PPID001' > /* Name=PPID Keyword=ProcessProgramID MappedValue=PPID001 */
        <L [...]
            <L [3]
                <U1 [1] 0 > /* Name=ACKC7A Keyword=AckCode MappedValue=Accepted */
                <U2 [1] 1 > /* Name=SEQNUM Keyword=SequenceNumber */
                <A [12] 'Default text' > /* Name=ERRW7 Keyword=ErrorCodeText MappedValue=Default text */
             >
         >
     >
.
* --- Message Definition End
* --- Auto Response
IF (S1F1 W) OnlineData_Host.
IF (S1F17 W) OnLineAck_Ack.
IF (S5F1 W) AlarmReportAck_Ack.
IF (S7F19 W) CurrentEPPDData.
IF (S10F3 W) TerminalDisplaySingleAck.
IF (S2F33 W) DefineReportAck_Ack.
IF (S2F35 W) LinkEventReportAck_Ack.
IF (S2F37 W) EnableDisableEventReportAck_Ack.
IF (S6F1 W) TraceDataAck_Ack.
IF (S10F5 W) TerminalDisplayMultiBlockAck.
IF (S1F13 W) EstablishCommunicationsRequestAck_Host_Ack.
IF (S5F3 W) EnableDisableAlarmAck_Ack.
IF (S6F5 W) MultiBlockGrant_S6_Ack.
IF (S6F9 W) FormattedVariableAck_Ack.
IF (S1F65 W) ConnectRequestAck_Host.
IF (S6F3 W) DiscreteVariableDataAck_Ack.
IF (S3F17 W) ProceedWithCarrierACK.
IF (S1F3 W) SelectedEquipmentStatusData.
IF (S2F15 W) EquipmentConstantAck_Ack.
IF (S2F31 W) DateTimeSetAck_Ack.
IF (S14F9 W) CJ_CREATE_ACK.
IF (S16F7 W) ProcessJobAlertConfirm.
IF (S16F9 W) ProcessJobEventConfirm.
IF (S16F15 W) PJ_CREATE_ACK.
IF (S16F19 W) PJALL.
IF (S16F21 W) S16F22.
IF (S16F27 W) CJCmdAck_Ack.
IF (S3F13 W) MIDACK.
IF (S7F11 W) M/PMUpdateAcknowlodg.
IF (S7F65 W) SequenceListRequest_Ack.
IF (S7F13 W) DELETELot-SequenceRE.
IF (S18F9 W) MaterialIDData.
IF (S2F49 W) EnhancedREMOTECOMMAND_ACK.
IF (S6F11 W) EventReportAck_Ack.
IF (S7F27 W) ProcessProgramVerificationAck.
