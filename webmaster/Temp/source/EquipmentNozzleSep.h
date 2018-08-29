// EquipmentNozzleSep.h : Declaration of the CEquipmentNozzleSeparator
/*---------------------------------------------------------------------+\
|																		|
|	Copyright 2003 Intergraph Corporation								|
|	All Rights Reserved													|
|																		|
|	Including software, file formats, and audio-visual displays;		|
|	may only be used pursuant to applicable software license			|
|	agreement; contains confidential and proprietary information of		|
|	Intergraph and/or third parties which is protected by copyright		|
|	and trade secret law and may not be provided or otherwise made		|
|	available without proper authorization.								|
|																		|
|	Unpublished -- rights reserved under the Copyright Laws of the		|
|	United States.														|
|																		|
|	Intergraph Corporation												|
|	Huntsville, Alabama	  35894-0001									|
|																		|
\+---------------------------------------------------------------------*/
/*---------------------------------------------------------------------+\
|
|	Revision History:					(most recent entries first)
	16-May-2003			P.Ranguelov
		Created
\+---------------------------------------------------------------------*/
#ifndef __EQUIPMENTNOZZLESEPARATOR_H_
#define __EQUIPMENTNOZZLESEPARATOR_H_

#include "resource.h"       // main symbols

#include "DwgExternalModule.h"
#include "IDisplayable.h"
#include "ucoll.h"
#include "uhrerr.h"

/////////////////////////////////////////////////////////////////////////////
// CEquipmentNozzleSeparator
class ATL_NO_VTABLE CEquipmentNozzleSeparator : 
	public CComObjectRootEx<CComSingleThreadModel>,
	public CComCoClass<CEquipmentNozzleSeparator, &CLSID_EquipmentNozzleSeparator>,
	public ISupportErrorInfo,
	//public IDispatchImpl<IEquipmentNozzleSeparator, &IID_IEquipmentNozzleSeparator, &LIBID_EQUIPMENTNOZZLESEPARATORLib>,
	public IEnumUnknown,
	public IDispatchImpl<IJDwgWrapperCompound, &IID_IJDwgWrapperCompound, &LIBID_DWGEXTERNALMODULELib>,
	public IDispatchImpl<IJDwgExternalModule, &IID_IJDwgExternalModule, &LIBID_DWGEXTERNALMODULELib>,
	public IDispatchImpl<IJDwgWrapperPseudoFilter, &IID_IJDwgWrapperPseudoFilter, &LIBID_DWGEXTERNALMODULELib>
{
public:
	CEquipmentNozzleSeparator()
	{
	}

DECLARE_REGISTRY_RESOURCEID(IDR_EQUIPMENTNOZZLESEPARATOR)
DECLARE_GET_CONTROLLING_UNKNOWN()
DECLARE_PROTECT_FINAL_CONSTRUCT()

BEGIN_COM_MAP(CEquipmentNozzleSeparator)
//	COM_INTERFACE_ENTRY(IEquipmentNozzleSeparator)

	COM_INTERFACE_ENTRY(IJDwgExternalModule)
	{&IID_IJGraphicEntity, NULL, _NoInterface},  //==COM_INTERFACE_ENTRY_NOINTERFACE
	COM_INTERFACE_ENTRY(ISupportErrorInfo)
	COM_INTERFACE_ENTRY(IEnumUnknown)
	COM_INTERFACE_ENTRY(IJDwgWrapperCompound)
	COM_INTERFACE_ENTRY2(IDispatch, IJDwgWrapperCompound)	
	COM_INTERFACE_ENTRY(IJDwgWrapperPseudoFilter)
	COM_INTERFACE_ENTRY_AGGREGATE_BLIND(m_pInner.p)
END_COM_MAP()

public:
	HRESULT FinalConstruct( )
	{
		//lazy initialization
		m_iCurrentIndex = 0;
		m_Children.SetSize( 0, 20 );
		return S_OK;
	}

	HRESULT FinalRelease()
	{
		int iSize;
		iSize = m_Children.GetSize();

		//release array elements
		for( int i = 0; i<iSize; i++ )
			m_Children[i]->Release();

		return S_OK;
	}

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IEquipmentNozzleSeparator
public:
//IEnumUnknown
	STDMETHOD(Next)(/* [in] */ ULONG celt,
					/* [out] */ IUnknown** rgelt,
					/* [out] */ ULONG* pceltFetched);
					
    STDMETHOD(Skip)(/* [in] */ ULONG celt);        
    STDMETHOD(Reset)( void);        
    STDMETHOD(Clone)( /* [out] */ IEnumUnknown** ppenum);
// IJDwgWrapperCompound
	STDMETHOD(EnumerateEntities)(IEnumUnknown * * pVal);

// IJDwgExternalModule
	STDMETHOD(GetInnerUnk)(IUnknown * * ppInnerUnk);
	STDMETHOD(SetInnerUnk)(IUnknown * ppInnerUnk);	
	STDMETHOD(get_ViewDirection)(IJDVector * * pVal);
	STDMETHOD(put_ViewDirection)(IJDVector * pVal);
	STDMETHOD(get_UpDirection)(IJDVector * * pVal);
	STDMETHOD(put_UpDirection)(IJDVector * pVal);
	STDMETHOD(get_ScaleFactor)(double * pVal);	
	STDMETHOD(put_ScaleFactor)(double pVal);

//IJDwgWrapperPseudoFilter	
	STDMETHOD(get_Filter)( /* [out, retval] */ BSTR* pVal);	
	STDMETHOD(put_Filter)( /* [in] */ BSTR newVal);	
	STDMETHOD(get_SubFilter)(/* [out, retval] */ BSTR* pVal);
	STDMETHOD(put_SubFilter)( /* [in] */ BSTR pVal);

private:
	HRESULT Initialize();
	BOOL IsDrawable( IUnknown* pUnk);

private:
	CComPtr<IUnknown>				m_pInner;			//delegator
	CComPtr<IUnknown>				m_pRealInner;

	JArray<IUnknown*, IUnknown*>	m_Children;
	int								m_iCurrentIndex;
	CComBSTR						m_bstrFilter;

};

#endif //__EQUIPMENTNOZZLESEPARATOR_H_
